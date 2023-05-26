// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Observe the following contract which has functionality to remove a spender address paired with an owner address:

// Your assignment is to build out the rest of the contract functionality. Create a Contract, using nested mapping, to pair two contract addresses together (an address owner and an address spender) with a value of integers to keep track of their index.

// One you have successfully set up the map, add additional contract functionality so that the contract can pair up new addresses together (owner and spender) as well as retrieve their mapping value.

contract Allowance {
    mapping(address => mapping(address => uint)) public allowance;

    //this function adds to the spenders allowance
    function add(
        address _addrOwner,
        address _addrSpender,
        uint _amount
    ) public {
        allowance[_addrOwner][_addrSpender] += _amount;
    }

    //this function removes the spenders allowance
    function remove(address _addrOwner, address _addrSpender) public {
        delete allowance[_addrOwner][_addrSpender];
    }
}
