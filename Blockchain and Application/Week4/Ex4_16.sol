//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex4_16 {

    uint public a = 4;

    // view: 함수 밖에서 선언된 (상태)변수를 함수 내부에서 읽을 수 있으나 변경은 불가능
    function myFunc() public view returns(uint) {
        uint b = a + 5;
        return b;
    }
}