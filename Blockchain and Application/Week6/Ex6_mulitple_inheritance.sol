//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ArtStudent {
    string public schoolName = "The Solidity University";
    uint public schoolHours = 5;
}

contract PartTimer {
    string public workPlace = "A Pizza Shop";
    uint public workingHours = 6;
}

// 다중상속: 여러개의 스마트컨트랙트를 상속
// 자식 컨트랙트에는 부모 컨트랙트의 함수와 변수를 정의하면 안된다.
// 부모 컨트랙트에 함수와 변수의 중복이 없어야 한다.
contract Alice is ArtStudent, PartTimer {
    uint public totalHours = schoolHours + workingHours;
}