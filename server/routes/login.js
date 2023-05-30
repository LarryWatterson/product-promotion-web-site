const express = require("express")
const jwt = require('jsonwebtoken')
const verifyToken = require('../middleware/auth-verify')
const db = require('../extern/dbConnection')
const crypto = require('crypto')

const router = express.Router()

router.post('/', (req, res) => {
    const { username, password } = req.body

    db.execute('SELECT * FROM account WHERE username = ?', [username])
        .then(result => {

            const values = result[0][0]
            if (!values) {
                throw 'Username not found!'
            }

            const password_md5 = crypto.createHash('md5').update(password).digest('hex')
            if (password_md5 === values.password) {
                const payLoad = { username, id: values.id }
                const token = jwt.sign(payLoad, req.app.get('api_secret_key'),{ expiresIn: '5m' } )
                res.json({
                    token,
                    id: values.id
                })
            }
            else {
                throw "Username or password is wrong!"
            }
        })
        .catch(error => {
            res.status(404).json({
                message: (typeof error === 'object' && error !== null) ? error.sqlMessage : error
            })
        })
})

module.exports = router

