const cds = require('@sap/cds')

class CatalogService extends cds.ApplicationService { init(){

  const { Goods } = this.entities ('sap.capire.shopping')

  return super.init()
}}

module.exports = { CatalogService }
