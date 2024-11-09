// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract NameRegistry {
    // 컨트랙트 정보를 나타낼 구조체
    struct ContractInfo {
        address contractOwner;
        address contractAddress;
        string description;
    }

    // 등록된 컨트랙트 수
    uint public numContracts;

    // 등록한 컨트랙트들을 저장할 매핑 (이름 -> 컨트랙트 정보 구조체)
    mapping (string => ContractInfo) public registeredContracts;

    // 함수를 호출하기 전에 먼저 처리되는 modifier: 컨트랙트를 등록한 사람인지 확인
    modifier onlyOwner(string memory _name) {
        require(registeredContracts[_name].contractOwner == msg.sender, "Only the owner can call this function.");
        _;
    }

    constructor() {
        numContracts = 0;
    }

    // 컨트랙트 등록
    function registerContract(string memory _name, address _contractAddress, string memory _description) public {
        require(registeredContracts[_name].contractAddress == address(0), "Already registered.");
        registeredContracts[_name] = ContractInfo(msg.sender, _contractAddress, _description);
        numContracts += 1;
    }

    // 컨트랙트 삭제
    function unregisterContract(string memory _name) public onlyOwner(_name) {
        delete registeredContracts[_name];
        numContracts -= 1;
    }

    // 컨트랙트 소유자 변경
    function changeOwner(string memory _name, address _newOwner) public onlyOwner(_name) {
        registeredContracts[_name].contractOwner = _newOwner;
    }

    // 컨트랙트 소유자 정보 확인
    function getOwner(string memory _name) public view returns(address) {
        return(registeredContracts[_name].contractOwner);
    }

    // 컨트랙트 주소 변경
    function setAddr(string memory _name, address _newAddress) public onlyOwner(_name) {
        registeredContracts[_name].contractAddress = _newAddress;
    }

    // 컨트랙트 주소 확인
    function getAddr(string memory _name) public view returns(address) {
        return(registeredContracts[_name].contractAddress);
    }

    // 컨트랙트 설명 변경
    function setDescription(string memory _name, string memory _newDescription) public onlyOwner(_name) {
        registeredContracts[_name].description = _newDescription;
    }

    // 컨트랙트 설명 확인
    function getDescription(string memory _name) public view returns(string memory) {
        return(registeredContracts[_name].description);
    }

}