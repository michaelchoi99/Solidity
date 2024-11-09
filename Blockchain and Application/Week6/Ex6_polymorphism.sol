//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// 스마트컨트랙트의 다형성
contract Animal {
    function getName() public pure virtual returns(string memory) {
        return "Animal";
    }
}

// Tiger는 부모인 Animal을 상속, getName함수를 오버라이딩
contract Tiger is Animal {
    function getName() public pure override returns(string memory) {
        return "Tiger";
    }
}

// Turtle은 부모인 Animal을 상속, getName함수를 오버라이딩
contract Turtle is Animal {
    function getName() public pure override returns(string memory) {
        return "Turtle";
    }
}

contract AnimalSet {
    // 객체의 자료형과 인스턴스화하고자하는 스마트컨트랙트 동일
    Animal public tiger = new Tiger();   // Tiger 스마트컨트랙트 인스턴스화, 자료형 = Animal
    Animal public turtle = new Turtle(); // Turtle 스마트컨트랙트 인스턴스화, 자료형 = Animal

    function getAllNames() public view returns(string memory, string memory) {
        return (tiger.getName(), turtle.getName());
    }

    function whatIsTheName(Animal _animal) public pure returns(string memory) { // 매개변수의 자료형 = Animal
        return (_animal.getName());
    }
}