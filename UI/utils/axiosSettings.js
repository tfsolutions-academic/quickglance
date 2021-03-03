import axios from 'axios';

const axiosInstance = axios.create({
    baseURL: process.env.NEXT_PUBLIC_api_root,
    timeout: 3000,
});

axiosInstance.interceptors.response.use(function (response) {
    // Any status code that lie within the range of 2xx cause this function to trigger
    // Do something with response data
    return response.data ? response.data : response;
  }, function (error) {
    // Any status codes that falls outside the range of 2xx cause this function to trigger
    // Do something with response error
    if (error.response){
        const statusCode = error.response?.status;
        if (!window.location.pathname.startsWith('/')){
            if (statusCode == 401 || statusCode == 403){
                window.location.replace(process.env.NEXT_PUBLIC_root_url);
             }
        }
    }
    return Promise.reject(error);
});


export default axiosInstance;