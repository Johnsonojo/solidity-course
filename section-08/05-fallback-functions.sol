// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Fallback Functions
// What are fallback functions?
// Fallback functions are unnamed functions that are executed when a contract receives plain Ether (without data).
// Fallback functions are defined using the fallback keyword.
// Fallback functions must have external visibility and cannot accept arguments.
// Fallback functions cannot return values.
// A contract can have only one fallback function.
// Fallback functions are executed either when a contract receives Ether without data, or when a contract receives a function call that does not match any of the available functions.
// Fallback functions are optional. If a contract does not have a fallback function, then the contract will throw an exception when it receives plain Ether or a function call that does not match any of the available functions.

contract Fallback {
    event Log(uint gas);

    // The gas spent for a send call is limited to 2300, so if you want your contract to receive Ether, you have to use a fallback function.
    // The gas spent for a transfer call is limited to 2300, so if you want your contract to receive Ether, you have to use a fallback function.
    // The gas spent for a call method is much higher than the gas spent for a send or transfer call, so if you want your contract to receive Ether, you have to use a fallback function.

    fallback() external payable {
        emit Log(gasleft());
    }

    function GetBalance() public view returns (uint) {
        return address(this).balance;
    }

    receive() external payable {
        // Handle the received Ether here if needed
        emit Log(gasleft());
        // uint receivedAmount = msg.value;
        // Perform additional operations or store the received Ether as required
        // For example, you can update a balance variable
        // balance += receivedAmount;
    }
}

// A new contract which will send ether to Fallback contract and trigger fallback function.

contract SendToFallback {
    function sendToFallback(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    function callFallback(address payable _to) public payable {
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}
