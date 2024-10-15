//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex4_9 {

    uint a = 5;

    function justA() public view returns(uint) {
        return a;
    }

    function prePlus() public returns(uint) {
        return ++a;   // "a = a + 1" and then return the value
    }

    function postPlus() public returns(uint) {
        return a++;   // return the value and then "a = a + 1"
    }
}