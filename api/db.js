var mysql = require('mysql')

// Database configuration
const config = {
  host: 'remotemysql.com',
  database: 'b6GvxAjWBd',
  port: 3306,
  username: 'b6GvxAjWBd',
  password: 'fCf6o9VPOs',
}

// Create databsae connection
var connection = mysql.createConnection({
  host: config.host,
  user: config.username,
  password: config.password,
  database: config.database,
  port: config.port,
})

// Promise for connection competing successfully
var promise = new Promise(function(resolve, reject) {
  connection.connect(function(err) {
    if (err) reject(err)
    console.log('Connected to database')
    resolve(connection)
  })
})

// Export promise
module.exports = promise
