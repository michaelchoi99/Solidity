//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Math {
    function division(uint _num1, uint _num2) public pure returns(uint) {
        return _num1 / _num2;
    }
}

contract Ex6_6 {
    event Information(string _error);

    Math math = new Math();

    function divisionWithTryCatch(uint _num1, uint _num2) public returns(uint) {
        try math.division(_num1, _num2) returns(uint result) { 
            // math.division의 실행결과는 result에 저장 --> result는 try블록 안에서 활용 가능
            emit Information("Success");
            return (result);
        } catch {
            emit Information("Failure");
            return(0);
        }
    }
}