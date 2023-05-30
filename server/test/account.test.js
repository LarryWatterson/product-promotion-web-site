const chai = require('chai')
const chaiHttp = require('chai-http')
const should = chai.should()
const server = require('../app')
chai.use(chaiHttp)

let token = null; let id = null


describe('/login test', () => {
    it('POST login', done => {
        chai.request(server)
            .post('/api/login')
            .send({ username: "root", password: "1"})
            .end((err, res) => {
                token = res.body.token
                id = res.body.id
                res.should.have.status(200)
                res.body.should.be.a('object')
                res.body.should.have.property('token')
                res.body.should.have.property('id')
                done()
            })
    })
})

describe('/account test', () => {
    it('it should be return the account details', done => {
        chai.request(server)
        .get('/api/account/details')
        .set('api-secret-key', token)
            .query({
                id
            })
        .end((err, res) => {
            res.should.have.status(200)
            res.body.should.be.a('object');
            res.body.should.have.property('id');
            res.body.should.have.property('name');
            res.body.should.have.property('surname');
            res.body.should.have.property('email');
            done();
        })
    })

    it('it should be update the details', done => {
        chai.request(server)
            .put('/api/account/updateDetails')
            .set('api-secret-key', token)
            .send({
                id,
                name: "UNIT",
                surname: "TEST",
                email: "unittest@test.com"
            })
            .end((err, res) => {
                res.should.have.status(200);
                done();
            })
    })
})