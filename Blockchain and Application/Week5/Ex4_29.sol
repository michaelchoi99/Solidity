//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex4_29 {
    // while 반복문
    function fun1() public pure returns(uint) {
        uint result = 0;
        uint a = 3;

        while(a > 0) {             // 조건식
            result = result + a;   // 반복문 로직
            --a;                   // 증감식
        }
        
        return result;
    }
}