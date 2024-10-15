//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex4_21 {
    // 함수와 가시성 지정자: public, private, internal, external
    uint public pub = 1;   // 상태변수는 getter 함수에 해당
    uint private pri = 2;
    uint internal inter = 3;
    //uint external exter = 4;   // external은 변수에 지정 불가능

    function funPub() public view returns(uint, uint, uint) {
        return(pub, pri, inter);
    }
    function funPri() private view returns(uint, uint, uint) {
        return(pub, pri, inter);
    }
    function funInter() internal view returns(uint, uint, uint) {
        return(pub, pri, inter);
    }
    function funExter() external view returns(uint, uint, uint) {
        return(pub, pri, inter);
    }
}