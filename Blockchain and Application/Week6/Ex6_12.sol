//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex6_12 {

    function getBalance(address _address) public view returns(uint) {
        return _address.balance; // 현재 주소에서 보유한 이더 잔액을 wei 단위로 표시
    }

    function getMsgValue() public payable returns(uint) {
        // payable: 주소형 타입과 함수에 적용 가능
        return msg.value; // 메시지와 함께 전송된 wei의 개수 (자료형: uint)
    }

    function getMsgSender() public view returns(address) {
        return msg.sender; // 현재 호출한 메시지 발신자 (자료형: address)
    }
}