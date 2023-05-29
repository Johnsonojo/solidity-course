// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Special Variables(Global Variables)
// Special variables are variables that are predefined by Solidity.
// Special variables are available globally and do not need to be declared before they are used.
// Special variables are read-only and cannot be changed by the user.
// Special variables are used to provide information about the blockchain and the current transaction.
// Comma separated list of Special Variables:
// block, msg, tx, abi, now, gasleft, blockhash, and address(this), and keccak256.

contract LedgerBalance {
    mapping(address => uint) public balance;

    function updateAmount(uint amount) public {
        balance[msg.sender] += amount;
    }
}

// 1. Create a new conract called Updated
// 2. Create a public function called updatesBalance
// 3. Instantiate the data type contract LedgerBalance to a new variable called ledgerBalance(similar to struct and enum)
// 4. Set the new variable ledgerBalance = new LedgerBalance()
// 5. Update the balance to 30
contract Updated {
    function updatesBalance() public {
        LedgerBalance ledgerBalance = new LedgerBalance();
        ledgerBalance.updateAmount(30);
    }
}

contract SimpleStorage {
    uint storedData;

    function set(uint x) public {
        storedData = x;
        // storedData = block.timestamp; //
    }

    function get() public view returns (uint) {
        return storedData;
    }
}
