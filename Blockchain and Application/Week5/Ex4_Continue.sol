//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex4_Continue {
    // continue: 반복문의 맨 처음으로 돌아가기
    function sumOnlyEvenNumbers() public pure returns(uint) {
        uint sumEven = 0;

        for (uint i = 1; i <= 10; i++) {
            // 홀수는 건너뛰고 continue를 통해 다음 반복으로 넘어감
            if (i % 2 != 0 ) {
                continue;
            }
            // 짝수만 합계에 더함
            sumEven += i;
        }

        return sumEven;
    }
}