//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex4_14 {
    // pure: 함수 밖에서 선언된 (상태)변수를 함수 내부에서 읽거나 변경 불가
    function myFunc(uint a) public pure returns(uint) {
        return a;
    }
}