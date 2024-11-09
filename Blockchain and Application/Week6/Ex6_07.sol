//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex6_7 {
    // modifier: 다수의 함수에 특정 로직을 부여하지만 값을 반환하는 것은 불가능

    modifier numMoreThan1(uint _num) {
        require(_num>1, "_num must be more than 1");
        _; // <-- modifier가 적용된 함수의 로직이 시작하는 위치
    }

    function getValue1(uint _num) public pure numMoreThan1(_num) returns(uint) {
        return _num;
    }

    function getValue2(uint _num) public pure numMoreThan1(_num) returns(uint) {
        return _num * 2;
    }
}