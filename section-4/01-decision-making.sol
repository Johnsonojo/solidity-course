// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract DecisionMaking {
    uint oranges = 5;

    function checkOranges() public view returns (bool) {
        if (oranges == 5) {
            return true;
        } else {
            return false;
        }
    }

    // Exercise.
    // 1. Create a stakingWallet variable as an integer and set it to a value of 10.
    // 2. Write a function called airDrop whic has public visibility, is IDE viewable and returns an integer.
    // 3. Create a decision making logic so that if the wallet has a value of 10 then add 10 more to the wallet.
    // 4. Return the wallet value.
    // 5. Deploy the contract and test the results.

    function airDrop() public pure returns (uint) {
        uint stakingWallet = 10;
        if (stakingWallet >= 10) {
            return stakingWallet + 10;
        } else {
            return stakingWallet + 1;
        }
    }

    // VARIABLE SCOPE - Functions & Variables

    // Private: Only available to the contract, meaning it cannot be accessed outside of the contract.
    // Internal: Only available to the contract and any contracts that inherit from it.
    // External: Only available to external contracts and functions.
    // Public: Available to everyone.

    // How to decide which visibility to use?
    // 1. If you want to hide the variable from the outside world, use private.
    // 2. If you want to inherit the variable, use internal.
    // 3. If you want to make the variable available to the outside world, use public.
    // 4. If you want to make the variable available to the outside world and other contracts, use external.
}
