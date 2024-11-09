//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// 추상화(abstract): 만들고자하는 여러개의 스마트컨트랙트의 공통 함수를 묶어 명시하는 행위

// System(추상 컨트랙트): 함수의 선언부만 가지는 컨트랙트
abstract contract System {
    uint internal version;
    bool internal errorPass;

    // 함수의 구현이 없음
    function versionCheck() internal virtual;
    function errorCheck() internal virtual;

    function boot() public returns(uint, bool) {
        versionCheck();
        errorCheck();
        return (version, errorPass);
    }
}

// 상속받은 컨트랙트에서 선언부만 가지는 함수를 오버라이딩하여 함수를 구현
contract Computer is System {
    function versionCheck() internal override {
        version = 3;
    }
    function errorCheck() internal override {
        errorPass = true;
    }
}

contract SmartPhone is System {
    function versionCheck() internal override {
        version = 25;
    }
    function errorCheck() internal override {
        errorPass = false;
    }
}