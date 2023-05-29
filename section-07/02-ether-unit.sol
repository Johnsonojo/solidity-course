// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract LearnEtherUnits {
    // wei is the smallest unit of ether (1 wei = 10^-18 ether)
    function test() public pure {
        assert(1000000000000000000 wei == 1 ether); // 1 ether == 10^18 wei

        assert(1 wei == 1); // 1 wei == 1 wei

        assert(1 ether == 1e18);

        assert(2 ether == 2000000000000000000 wei);
    }
}
