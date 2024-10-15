//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex4_4 {
    
    // define the function with the return type and return variable
    function myFunc() public pure returns(uint age, uint weight) {
        age = 31;
        weight = 60;
    }
}