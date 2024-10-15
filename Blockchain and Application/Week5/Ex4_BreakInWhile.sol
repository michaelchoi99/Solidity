//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex4_BreakInWhile {
    function findNumber() public pure returns(uint) {
        uint result;
        uint i = 1;   // 변수 초기화

        while (true) {
            // 무한반복문: 특정 조건을 지정하여 반복문을 종료
            if (i == 5) {
                result = i;   // 값을 반복문에 저장
                break;        // 반복문 종료
            }
            i++;              // 증감식
        }

        return result;
    }
}