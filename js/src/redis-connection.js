const Redis = require('ioredis')

class RedisConnection {
    fetchConnection(){
        if(!this.connection) this.connection = new Redis()
        return this.connection
    }
}

module.exports = RedisConnection