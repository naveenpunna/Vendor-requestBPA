

const cds = require('@sap/cds')
module.exports = async function (srv) {
    srv.before('CREATE', 'VendorRequestDetails', req => {
        req.data.VendorNumber = cds.utils.uuid()
      })
}