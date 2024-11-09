//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex6_3 {
    // revert("오류 메시지")
    // if조건문과 함께 사용하여 특정 조건을 만족하면 오류 메시지 출력
    function runRevert(uint _num) public pure returns(uint) {
        if (_num<=3) {
            revert("Revert Error: input must be greater than 3");
        }
        return _num;
    }

    // require(오류발생조건, "오류 메시지")
    // if조건문과 revert가 합쳐진 역할 수행
    // 오류발생조건이 False인 경우에 오류 메시지 출력
    function runRequired(uint _num) public pure returns(uint) {
        require(_num>3, "Require Error: input must be greater than 3");
        return _num;
    }
}