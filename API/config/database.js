module.exports = ({ env }) => ({
  defaultConnection: 'default',
  connections: {
    default: {
      connector: 'bookshelf',
      settings: {
        client: 'mysql',
        host: env('DATABASE_HOST', 'localhost'),
        port: env.int('DATABASE_PORT', 3306),
        database: env('DATABASE_NAME', 'tfsolutions_quickglance'),
        username: env('DATABASE_USERNAME', 'quickglanceadmin'),
        password: env('DATABASE_PASSWORD', 'quickglance@2020'),
        ssl: env.bool('DATABASE_SSL', false),
      },
      options: {}
    },
  },
});
