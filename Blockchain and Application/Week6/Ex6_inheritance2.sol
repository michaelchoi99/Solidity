//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// 상속(inheritance)
// 생성자 매개변수가 있는 부모컨트랙트를 상속
contract Student {
    string public schoolName = "The University of Solidity";
    string public major;
    constructor(string memory _major) {
        major = _major;
    }
}

// 방법1
contract ArtStudent is Student("Art") {}

//방법2
contract MusicStudent is Student {
    constructor() Student("Music") {}
}

// 방법3
contract MathStudent is Student {
    constructor(string memory _major) Student(_major) {}
}