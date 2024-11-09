//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Computer {
    function versionCheck() public pure returns(uint) {
        return 3;
    }
    function errorCheck() public pure returns(bool) {
        return true;
    }
    function boot() public pure returns(uint, bool) {
        return (versionCheck(), errorCheck());
    }
}