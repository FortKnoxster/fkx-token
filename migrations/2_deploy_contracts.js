const FKX = artifacts.require('FKX')
const FKXMigrator = artifacts.require('FKXMigrator')

module.exports = function (deployer) {
  deployer.deploy(FKX)
  deployer.deploy(FKXMigrator)
}
