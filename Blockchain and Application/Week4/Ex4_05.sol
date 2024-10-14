//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex4_5 {

    // the variable "a" is state variable
    uint public a = 3;   // the result of "a" = 100 since myFunc()
    uint public b = myFunc();

    function myFunc() public returns(uint) {
        // the variable "a" is also state variable
        a = 100;
        return a;
    }
}