class Config {
    static get port() {
      return process.env.REDIS_PORT || '6379:6379'
    }
  
    static get server() {
      return process.env.REDIS_SERVER || '127.0.0.1'
    }
  
    static get password() {
      return process.env.REDIS_PASSWORD
    }
  }
  
  module.exports = Config