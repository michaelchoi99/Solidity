//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Student {
    // private: 정의된 스마트컨트랙트 내부에서만 접근 가능
    string private schoolName = "The University of Solidity";
    // internal: 상속받은 스마트컨트랙트에서도 접근 가능
    string internal schoolNumbers = "02-1234-5678";
}

contract ArtStudent is Student {
    /*   
    function getSchoolName() public view returns(string memory) {
        return schoolName; // Error: private변수이므로 상속 불가능
    }
    */

    function getSchoolNumbers() public view returns(string memory) {
        return schoolNumbers;
    }
}