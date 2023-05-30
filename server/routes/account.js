const express = require('express')
const verifyToken = require('../middleware/auth-verify')
const db = require('../extern/dbConnection')
const router = express.Router()
router.use(verifyToken)

const accountArr = []

router.get('/details', (req, res) => {
    const id = req.query.id
    db.execute('SELECT * FROM account WHERE id = ?', [id])
        .then(result => {
            const dbResult = result[0][0]
            if (!dbResult) {
                res.json({
                    message: "Have some problem(s)!"
                })
            }
            res.json({
                id: dbResult.id,
                name: dbResult.name,
                surname: dbResult.surname,
                email: dbResult.e_mail
            })
        })
        .catch( err => {
            res.status(500).json({
                message: err.code
            })
        })
})

router.put('/updateDetails', (req, res) => {
    const { id, name, surname, email } = req.body

    const now = Date.now()
    const it = accountArr.find(elm => elm.id === id)

    if (it && it.lastUpdate > now) {
        const leftMin = Math.floor((it.lastUpdate - now) / (1000 * 60));
        return res.json({
            message: `You must wait ${leftMin} minute(s) for update!`
        })
    }

    accountArr.push({
        id,
        lastUpdate: now + (15 * 60 * 1000) // 15 min update block
    })

    db.execute('UPDATE account SET name = ?, surname = ?, e_mail = ? WHERE id = ?', [name, surname, email, id])
        .then(result => {
            res.json({
                message: "Successfully updated!"
            })
        })
        .catch(err => {
            res.status(500).json({
                message: err.code
            })
        })
})


module.exports = router