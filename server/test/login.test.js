const chai = require('chai')
const chaiHttp = require('chai-http')
const should = chai.should()
const server = require('../app')
chai.use(chaiHttp)

let token = null

describe('/login test', () => {
    it('POST login', done => {
        chai.request(server)
            .post('/api/login')
            .send({ username: "root", password: "1"})
            .end((err, res) => {
                token = res.body.token
                done()
            })
    })
})
