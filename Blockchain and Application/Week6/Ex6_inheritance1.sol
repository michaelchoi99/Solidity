//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// 상속(inheritance)
// 부모컨트랙트의 변수 또는 함수를 자식컨트랙트에서 사용(단, private은 상속되지 않는다)
// is를 사용하여 상속받을 컨트랙트를 정의
contract Student {
    string public schoolName = "The University of Solidity";
}

contract ArtStudent is Student {
    function changeSchoolName() public {
        schoolName = "The University of Blockchain";
    }
    function getSchoolName() public view returns(string memory) {
        return schoolName;
    }
}
