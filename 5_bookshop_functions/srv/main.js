const cds = require('@sap/cds')

module.exports = class bookshop extends cds.ApplicationService {

  init() {

    const { Books, Authors } = cds.entities('bookshop')

    this.on('READ', Books, async (req) => {
      console.log('after READ Books', req)
    })
    return super.init()
  }
}
