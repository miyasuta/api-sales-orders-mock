module.exports = function () {
    this.before('CREATE','A_SalesOrder', (req) => {
        req.data.SalesOrder = Math.floor(Math.random() * 10000000000).toString();
    })
}