// Specifies the Solidity compiler version required for this contract.
pragma solidity ^0.5.15;

// Declares the Migrations contract.
contract Migrations {
  // State variable to store the address of the owner of the contract.
  address public owner;

  // State variable to store the ID of the last completed migration.
  uint public last_completed_migration;

  // Modifier to restrict access to certain functions to only the owner.
  modifier restricted() {
    // Ensures that the caller of the function is the owner of the contract.
    require(msg.sender == owner, "Access restricted to owner");
    _; // Continues with the execution of the modified function.
  }

  // Constructor function, initializes the contract and sets the deployer as the owner.
  constructor() public {
    owner = msg.sender; // Sets the owner to the address that deployed the contract.
  }

  // Function to set the ID of the last completed migration.
  // Only the owner can call this function (enforced by the `restricted` modifier).
  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed; // Updates the last completed migration ID.
  }

  // Function to upgrade the contract to a new address.
  // Only the owner can call this function (enforced by the `restricted` modifier).
  function upgrade(address new_address) public restricted {
    // Creates a new instance of the Migrations contract at the specified address.
    Migrations upgraded = Migrations(new_address);

    // Sets the last completed migration in the new contract to match this contract.
    upgraded.setCompleted(last_completed_migration);
  }
}
