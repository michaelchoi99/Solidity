//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// new: 컨트랙트를 새롭게 배포
contract Monitor {
    string public name;
    constructor(string memory _name) {
        name = _name;
    }
    function show() public pure returns(string memory) {
        return "show";
    }
}

contract SystemUnit {
    string public name = "XG12";
    function turnOn() public pure returns(string memory) {
        return "turnOn";
    }
}

contract Computer {
    Monitor public monitor; // 스마트컨트랙트명 가시성지정자 변수명
    SystemUnit public systemUnit; // 스마트컨트랙드명 가시성지정자 변수명

    constructor() {
        // new(인스턴스화): 스마트컨트랙트를 새롭게 배포한 것과 동일
        monitor = new Monitor("DW12"); // 객체 = 인스턴스화
        systemUnit = new SystemUnit(); // 객체 = 인스턴스화
    }

    function getAllNames() public view returns(string memory, string memory) {
        return(monitor.name(), systemUnit.name());
    }

    function start() public view returns(string memory, string memory) {
        return(monitor.show(), systemUnit.turnOn());
    }
}