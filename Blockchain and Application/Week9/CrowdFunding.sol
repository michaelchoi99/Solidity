// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract CrowdFunding {

    struct Investor {
        address addr; // 투자자 주소
        uint amount;  // 투자액
    }
    mapping (uint => Investor) public investors; // 투자자 추가 시, key 증가

    address public owner;     // 컨트랙트 소유자
    uint public numInvestors; // 투자자 수
    uint public deadline;     // 마감일
    string public status;     // 모금활동 상태: Funding, Campaign Succeeded, Campanign Failed
    bool public ended;        // 모금 종료 여부: True -> 모금 기간 종료, False -> 모금 진행
    uint public goalAmount;   // 목표액
    uint public totalAmount;  // 총투자액

    modifier onlyOwner() {
        require(owner == msg.sender, "Only the owner can call this function.");
        _;
    }

    constructor(uint _duration, uint _goalAmount) {
        owner = msg.sender;

        deadline = block.timestamp + _duration;
        goalAmount = _goalAmount * 1 ether;
        status = "Funding";
        ended = false;

        numInvestors = 0;
        totalAmount = 0;
    }

    function fund() public payable {
        if (ended == false) {
            require(msg.value > 0, "Investing amount must be greater than 0.");
            investors[numInvestors] = Investor(msg.sender, msg.value);
            numInvestors += 1;
            totalAmount += msg.value;
        }
    }

    function checkGoalReached() public onlyOwner {
        require(block.timestamp > deadline, "Time is not over.");
        if (totalAmount >= goalAmount) {
            payable(owner).transfer(totalAmount);
            status = "Campaign Succeed";
            ended = true;
        } else {
            for (uint index=0; index<numInvestors; index++) {
                payable(investors[index].addr).transfer(investors[index].amount);
            }
            status = "Campaign Failed";
            ended = true;
        }
    }

}