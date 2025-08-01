const cds = require('@sap/cds');

module.exports = cds.service.impl(function() {
    this.on('READ', 'Books', () => {
        console.log('inside on read book function');
    })
})