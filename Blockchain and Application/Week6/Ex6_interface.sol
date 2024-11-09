//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// 인터페이스(interface)
// 제한사항1. 인터페이스끼리 상속 불가능하며, 스마트컨트랙트와 상속 --> 이미 배포된 컨트랙트를 참조하고 함수 호출에 유용
// 제한사항2. 완전히 구현된 함수를 정의 불가능, 완전히 구현되지 않은 함수를 명시
// 제한사항3. 함수의 가시성지정자는 external
// 제한사항4. 생성자(constructor) 정의 불가능
// 제한사항5. 상태변수 정의 불가능
// 제한사항6. 모디파이어(pure, view) 정의 불가능

interface System {
    function versionCheck() external returns(uint);
    function errorCheck() external returns(bool);
    function boot() external returns(uint, bool);
}

contract Computer is System {
    function versionCheck() public pure override returns(uint) {
        return 3;
    }
    function errorCheck() public pure override returns(bool) {
        return true;
    }
    function boot() public pure override returns(uint, bool) {
        return (versionCheck(), errorCheck());
    }
}

contract SmarPhone is System {
    function versionCheck() public pure override returns(uint) {
        return 25;
    }
    function errorCheck() public pure override returns(bool) {
        return true;
    }
    function boot() public pure override returns(uint, bool) {
        return (versionCheck(), errorCheck());
    }
}