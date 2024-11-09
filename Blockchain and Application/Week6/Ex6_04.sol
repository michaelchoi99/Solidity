//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex6_4 {

    event ErrorReason1(string reason);
    event ErrorReason2(uint errorCode);
    event ErrorReason3(bytes lowLevelData);

    function outPut5(uint _num) public pure returns(uint) {
        if (_num>=6) {
            revert("_num should be 5");
        }
        if (_num<=4) {
            assert(false);
        }
        return 5;
    }

    // try/catch 구문: 오류가 발생하면 catch블록에서 처리
    // 특징1. 함수 내에서 tru/catch문을 정의
    // 특징2. 적용 가능한 경우: 1) 함수를 외부에서 호출하는 경우, 2) 인스턴스화
    // 특징3. try/catch문 내부에서 오류가 발생하면 트랜잭션 실패

    function outPut5WithTryCatch(uint _num) public returns(uint256, bool) {
        try this.outPut5(_num) returns(uint256 value) { 
            // 키워드 this: 내부함수를 외부에서 접근 가능, 외부호출함수: outPut5
            return (value, true);
        } catch Error(string memory reason) { // revert, require 오류 처리
            emit ErrorReason1(reason);        // catch Error는 오류 메시지를 매개변수를 받음
        } catch Panic(uint errorCode) {       // assert 오류 처리
            emit ErrorReason2(errorCode);     // catch Panic은 내부오류의 오류코드를 매개변수로 받음
        } catch (bytes memory lowLevelData) { // 그 외의 오류 처리
            emit ErrorReason3(lowLevelData);
            return(0, false);
        }
    }
}