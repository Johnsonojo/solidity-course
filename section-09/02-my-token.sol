// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Coin {
    address public minter;
    mapping(address => uint) public balances;
    uint private maxSupply = 21000000;
    event Sent(address from, address to, uint amount);

    constructor() {
        minter = msg.sender;
    }

    error InsufficientBalance(uint requested, uint available);

    // error MaxSupplyReached(uint maxSupply);
    // error CannotMintMoreThanMaxSupply(uint amount, uint maxSupply);

    function send(address receiver, uint amount) public {
        if (amount > balances[msg.sender])
            revert InsufficientBalance({
                requested: amount,
                available: balances[msg.sender]
            });

        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }

    // burn function
    function burn(uint amount) public {
        require(msg.sender == minter);
        balances[msg.sender] -= amount;
    }

    // total supply function
    function totalSupply() public view returns (uint) {
        return balances[msg.sender];
    }

    // mint function
    function mint(address receiver, uint amount) public {
        require(msg.sender == minter);
        require(amount + totalSupply() <= maxSupply);
        balances[receiver] += amount;
    }
}
