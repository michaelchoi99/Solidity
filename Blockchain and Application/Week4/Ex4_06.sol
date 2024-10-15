//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex4_6 {

    int a;       // basic value = 0
    uint b;      // basic value = 0
    bool c;      // basic value = false
    bytes d;     // basic value = 0x
    string e;    // basic value = ""
    address f;   // basic value = 0x0000000000000000000000000000000000000000

    // the basic value of the variable type
    function assignment() public view returns(int, uint, bool, bytes memory, string memory, address) {
        return(a, b, c, d, e, f);
    }
}