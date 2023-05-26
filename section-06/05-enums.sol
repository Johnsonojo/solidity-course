// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Enums are one way to create a user-defined type in Solidity.
// They are explicitly convertible to and from all integer types but implicit conversion is not allowed.
// The explicit conversions check the value ranges at runtime and a failure causes an exception.
// Enums needs to be declared in the contract, outside of any function.
// Enums can be declared as local variables inside functions.
// Enums can be declared inside structs.
// Enums can be declared inside other enums.
// Enums can be declared as function arguments or return values.
// Enums can be declared as public, internal or private but not external.
// Enums can be declared as storage, memory or calldata but not in the stack.
// Enums can be declared as constant or immutable.
// Enums can be declared as payable or non-payable.
// Enums can be declared as abstract or non-abstract.
// Enums can be declared as virtual or non-virtual.

contract LearnEnum {
    enum frenchFriesSize {
        Small,
        Medium,
        Large
    }

    frenchFriesSize public choice;
    frenchFriesSize defaultChoice = frenchFriesSize.Medium;

    function setSmall() public {
        choice = frenchFriesSize.Small;
    }

    function setMedium() public {
        choice = frenchFriesSize.Medium;
    }

    function setLarge() public {
        choice = frenchFriesSize.Large;
    }

    function getChoice() public view returns (frenchFriesSize) {
        return choice;
    }

    function getDefaultChoice1() public view returns (frenchFriesSize) {
        return defaultChoice;
    }

    // Another way to write the getDefaulChoice function
    function getDefaultChoice2() public view returns (uint) {
        return uint(defaultChoice);
    }
}
