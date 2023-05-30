const jwt = require('jsonwebtoken')

module.exports = (req, res, next) => {
    const token = req.headers['api-secret-key']
    if (token) {
        const API_KEY = process.env.API_KEY
        jwt.verify(token, API_KEY, (err, decoded) => {
            if (err) {
                res.status(404).json({
                    message: err.message
                })
            }
            else {
                res.locals.user = decoded
                next()
            }
        })
    }
    else {
        res.status(404).json({
            message: 'No token provided!'
        })
    }
}