// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract TimeUnitConversion {
    // Time Units
    // Solidity has time units built in.
    // Time units include seconds, minutes, hours, days, weeks, and years.
    // Exercise
    // Create the following assertions in a function called exercise:
    // Assert ewuivalencies for minutes to seconds, hours to minutes, days to hours and weeks to days.

    function exercise() public pure {
        assert(1 minutes == 60 seconds);
        assert(24 hours == 60 minutes);
        assert(1 days == 24 hours);
        assert(1 weeks == 7 days);
    }
}
