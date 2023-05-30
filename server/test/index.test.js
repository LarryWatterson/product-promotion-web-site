const chai = require('chai')
const chaiHttp = require('chai-http')
const should = chai.should()
const server = require('../app')
chai.use(chaiHttp)

describe('/api/products test', () => {
    it('(GET/ ) return the all products', done => {
        chai.request(server)
            .get('/api/products')
            .end((err, res) => {
                res.should.have.status(200);
                res.body.should.be.a('array')
                done();
            })
    })

    it('(GET/ /latest ) return the last 5 products', done => {
        chai.request(server)
            .get('/api/products/latest')
            .end((err, res) => {
                res.should.have.status(200);
                res.body.should.be.a('array')
                done();
            })
    })

})
