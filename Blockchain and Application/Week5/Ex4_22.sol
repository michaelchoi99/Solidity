//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex4_22 {
    // external 함수는 내부접근이 불가능
    function funExt() external pure returns(uint) {
        return 2;
    }
    function funPri() private pure returns(uint) {
        return 3;
    }
    /*
    function outPutExt() public pure returns(uint) {
        return funExt();   // external 함수의 내부접근으로 인한 오류
    }
    */
    function outPutPri() public pure returns(uint) {
        return funPri();
    }
}