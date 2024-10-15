//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex4_3 {

    uint public a = 3;
    uint public b = 5;

    // define the function which has the return value

    /*
    function "name()" public returns("return value type") {
        "content"
        return("return variable")
    } 
    */

    function myFunc() public returns(uint, uint) {
        a = 100;
        b = 0;
        return (a, b);
    }
}