//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Calculator {
    // overriding: 함수가 하나의 이름으로 여러개의 다른 매개변수를 다룰 수 있다. --> 함수의 다형성
    function mul(uint _num1, uint _num2) public pure returns(uint) {
        return _num1 * _num2;
    }
    function mul(uint _num1, uint _num2, uint _num3) public pure returns(uint) {
        return _num1 * _num2 * _num3;
    }
}

contract Ex6_1 {
    
    Calculator internal calculator = new Calculator(); // calculator: 인스턴스화
    
    function getNumbers() public view returns(uint, uint) {
        return (calculator.mul(4,5), calculator.mul(4,5,6));
    }
}