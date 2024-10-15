//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex4_30 {
    // do-while 반복문
    function fun1() public pure returns(uint) {
        uint result = 0;
        uint a = 0;

        do {                       // 최소 1회 실행
            result = result + a;   // 반복문 로직
            ++a;                   // 증감식
        } while(a < 3);            // 조건식

        return result;
    }
}