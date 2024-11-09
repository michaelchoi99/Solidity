//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// 캡슐화(encapsulation): 제공되는 함수를 통해서만 변수에 접근이 가능
contract Number {
    uint private num = 4;
    function changeNum() public {
        num = 5;
    }
    function getNum() public view returns(uint) {
        return num;
    }
}

contract Caller {
    Number internal instance = new Number();
    function changeNumber() public {
        instance.changeNum();
    }
    function getNumber() public view returns(uint) {
        return instance.getNum();
    }
}