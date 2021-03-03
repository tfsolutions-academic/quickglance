const express = require('express')
const next = require('next')
const cookie = require('cookie');
const { createProxyMiddleware } = require("http-proxy-middleware")

const port = process.env.PORT || 3000
const dev = process.env.REGION !== 'production'
const strapiEndpoint = process.env.STRAPI_ENDPOINT;
const app = next({ dev })
const handle = app.getRequestHandler()

const isDevelopment = process.env.REGION !== 'production';

const handleAuthRequest = (proxyRes, req, res) => {

}

app.prepare().then(() => {
  const server = express();

  server.use('/logout', function (req, res, next) {
    res.setHeader('Set-Cookie', cookie.serialize('auth', 'loggedout', 
            {
              httpOnly : true,
              sameSite : 'strict',
              secure : !isDevelopment,
              path : '/',
              maxAge : -1 //forced expiration
            }));
    res.redirect('/');
    return;
  });

  server.use('/api', createProxyMiddleware({
    target: process.env.STRAPI_ENDPOINT,
    pathRewrite: {
        '^/api' : ''
    },
    onProxyReq : (proxyReq, req, res) => {
      const secureCookie = req.headers.cookie;
      const isAuthEndpoints = proxyReq.path.startsWith('/auth/');
      //If the proxy request is for the auth endpoints such as /auth/local, do not add Authorization header
      if (!isAuthEndpoints){
        if(secureCookie && secureCookie.split('=')[0]=='auth'){
          const jwt = secureCookie.split('=')[1];
          proxyReq.setHeader('Authorization', 'Bearer ' + jwt);
        }
      }
    },
    onProxyRes : (proxyRes, req, res) => {
      if (req.url == '/auth/local' && proxyRes.statusCode == 200){
          let userInfo = '';
          proxyRes.setEncoding('utf8');
          proxyRes.on('data', (body)=>{
            userInfo = JSON.parse(body);
            res.setHeader('Set-Cookie', cookie.serialize('auth', userInfo.jwt, 
            {
              httpOnly : true,
              sameSite : 'strict',
              secure : !isDevelopment,
              path : '/',
              maxAge : 3600 //1 hour
            }));
          })
      }
    },

    changeOrigin: true
  }));



  server.all('*', (req, res) => {
    return handle(req, res);
  })

  server.listen(port, (err) => {
    if (err) throw err
    console.log(`> Ready on http://localhost:${port}`)
  })
}).catch(err => {
    console.log('Error:::::', err)
}) 