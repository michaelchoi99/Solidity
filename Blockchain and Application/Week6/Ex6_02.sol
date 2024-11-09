//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex6_2 {
    // assert(오류발생조건)
    // 내부적으로 문제가 발생하는 경우: 0으로 나누기, 존재하지 않는 배열 인덱스
    // 불변성 확인: 
    // 오류발생조건이 False인 경우에 revert error 발생

    function runAssert(bool _bool) public pure returns(bool) {
        assert(_bool); // "_bool = false"인 경우에 revert 에러 발생
        return _bool;  // "_bool = true"인 경우에는 true 반환
    }

    function divisionByZero(uint _num1, uint _num2) public pure returns(uint) {
        return _num1 / _num2; // "2/0"과 같은 경우에 revert 에러 발생
    }
}