//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex4_20 {
    
    uint a = 3;

    function myFunc1() external view returns(uint, uint) {
        uint b = 4;
        return(a, b);
    }

    /*
    function myFunc2() external pure returns(uint) {
        return b;   // error since "b" is local variable of "myFunc1()"
    }
    */
}