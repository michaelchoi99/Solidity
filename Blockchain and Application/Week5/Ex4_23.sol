//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex4_23 {
    // "this"를 통한 external 함수 내부접근
    function funExt() external pure returns(uint) {
        return 2;
    }
    function outPutExt() public view returns(uint) {
        return this.funExt();
    }
}