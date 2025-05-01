// Import the Voting contract artifact, which is the compiled version of the Voting.sol Solidity contract.
var Voting = artifacts.require("./Voting.sol");

// Export a function that specifies the deployment process for the Voting contract.
module.exports = function(deployer) {
  // Use the deployer object to deploy the Voting contract to the blockchain.
  deployer.deploy(Voting);
};
