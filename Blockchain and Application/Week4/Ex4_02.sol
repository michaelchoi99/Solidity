//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex4_2 {
    // define the value type variable(bool, int, uint, address)
    uint public a = 3;

    // define the function that has parameters.
    function myFunc(uint b, uint c, uint d) public {
        a = b;
        a = c;
        a = d;
    }
}