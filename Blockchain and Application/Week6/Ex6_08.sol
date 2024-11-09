//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex6_8 {

    uint public a;
    uint public b;

    modifier plusA() {
        a = a + 1;
        _; // <-- mulA(): a = a * 2
    }

    modifier plusB() {
        _; // <-- mulB(): b = b * 2
        b = b + 1;
    }

    function mulA() public plusA {
        a = a * 2;
    }

    function mulB() public plusB {
        b = b * 2;
    }
}