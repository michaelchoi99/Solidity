//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

interface System {
    function versionCheck() external returns(uint);
    function errorCheck() external returns(bool);
    function boot() external returns(uint, bool);
}

contract Load {
    // 아래 함수들의 매개변수는 "called"를 deploy(배포)한 transact의 주소
    function versionCheck(address _addr) public returns(uint) {
        return System(_addr).versionCheck();
    }
    function errorCheck(address _addr) public returns(bool) {
        return System(_addr).errorCheck();
    }
    function boot(address _addr) public returns(uint, bool) {
        return System(_addr).boot();
    }
}