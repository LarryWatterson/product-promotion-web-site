const express = require("express")
const db = require('../extern/dbConnection')
const router = express.Router()

router.get('/', (req, res, next) => {
    db.execute('SELECT * FROM `products` ORDER BY date')
        .then(result => {
            res.json(result[0])
        })
        .catch(err => {
            res.status(500).json({ error: err.code })
        })
})

router.get('/latest', (req, res) => {
    db.execute('SELECT * FROM `products` ORDER BY date DESC LIMIT 4')
        .then((result) => {
            res.json(result[0]);
        }, err => {
            res.status(500).json({error: err.code});
        });
})

router.get('/:id', (req, res, next) => {
    const id = req.params.id
    db.execute('SELECT * FROM `products` WHERE id = ?', [id])
        .then(result => {
            res.json(result[0])
        })
        .catch(err => {
            res.status(500).json({ error: err.code })
        })
})

module.exports = router