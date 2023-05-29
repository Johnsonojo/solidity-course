// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// What are uints?
// Uints are unsigned integers.
// Uints are positive whole numbers.
// Uints are stored in 256 bits.
// Uints can be declared as uint8, uint16, uint32, uint64, uint128, uint256, and uint.
// Uints can be declared as uint or uint256.
// Uints can be declared as public, private, internal, or external.
// uint is an alias for uint256.
// uint is the default type for unsigned integers.
// uint8 is an alias for uint8.
// uint8 is an unsigned integer with a maximum value of 255 which is 2^8 - 1.
// uint16 is an alias for uint16.
// uint16 is an unsigned integer with a maximum value of 65535 which is 2^16 - 1.
// uint32 is an alias for uint32.
// uint32 is an unsigned integer with a maximum value of 4294967295 which is 2^32 - 1.
// uint64 is an alias for uint64.
// uint64 is an unsigned integer with a maximum value of 18446744073709551615 which is 2^64 - 1.
// uint128 is an alias for uint128.
// uint128 is an unsigned integer with a maximum value of 340282366920938463463374607431768211455 which is 2^128 - 1.
// uint256 is an alias for uint256.
// uint256 is an unsigned integer with a maximum value of 115792089237316195423570985008687907853269984665640564039457584007913129639935 which is 2^256 - 1.

contract LearnConversion {
    // conversion to smaller type costs higher order bits
    // The cost of converting a smaller type to a larger type is free.
    // The cost of converting a larger type to a smaller type costs the higher order bits.
    // The cost of converting a larger type to a smaller type is 0.000006 gas.
    // The cost of converting a smaller type to a larger type is 0 gas.
    uint32 a = 0x12345678;
    uint16 b = uint16(a); // b == 0x5678 now

    uint16 c = 0x1234;
    uint32 d = uint32(c); // d == 0x00001234 now

    // Bytes
    // Conversion to smaller bytes types does not pad zeroes to the left.
    bytes2 e = 0x1234;
    bytes1 f = bytes1(e); // f == 0x12 now

    // Conversion to larger bytes types does pad zeroes to the left.
    bytes2 g = 0x1234;
    bytes4 h = bytes4(g); // h == 0x12340000 now
}
