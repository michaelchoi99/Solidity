//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Adult {
    uint public age;
    constructor(uint _age) {
        require(_age>19, "Must be more than 19 years old"); // _age가 19 미만이면 require 오류 발생
        age = _age;
    }
}

contract Ex6_5 {
    event Information(string _error);

    function instantiate(uint _age) public returns(uint) {
        try new Adult(_age) returns(Adult adult) { // Adult 스마트컨트랙트를 인스턴스화
            emit Information("Success");
            return (adult.age());
        } catch { // catch만 선언: assert, revert, require 모두 처리
            emit Information("Failed: the defualt age is 20"); // 에러 메시지 출력
            Adult adult = new Adult(20); // 오류 발생 시 대응법
            return (adult.age());
        }
    }
}