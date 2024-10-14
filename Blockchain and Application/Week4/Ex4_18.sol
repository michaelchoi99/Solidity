//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex4_18 {
    // 참조 타입이 함수의 매개변수, 반환값, 내부변수로 정의될 때는 저장공간을 명시
    // 명시하지 않으면 에러가 발생 --> 근데 왜 발생 안함???
    function myFunc(string memory str) public pure returns(uint, string memory, bytes memory) {
        uint num = 99;
        bytes memory byt = hex"01";   // bytes: reference type(해당 값의 주소만 복사)
        return(num, str, byt);
    }
}