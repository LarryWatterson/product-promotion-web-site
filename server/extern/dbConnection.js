    const mysql = require("mysql2/promise")
const config = JSON.parse(process.env.DB_CONFIG)
const pool = mysql.createPool(config)

pool.getConnection()
    .then(connection => {
        console.log('SQL connected!');
        connection.release();
    })
    .catch(err => {
        console.error(`SQL connection err: ${err}`)
    })

module.exports = pool