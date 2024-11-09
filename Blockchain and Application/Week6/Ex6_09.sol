//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex6_9 {

    event Information(string info);
    
    // enum
    // uint8 범위를 가진 상수집합
    // 0 ~ 255 값에 자유롭게 상수명 지정
    // 특정한 값만을 가지는 변수 만들 때 유용
        // 특정 과정, 메뉴, 규격 등
        // require문과 함께 사용하여 실행순서 통제
    enum FoodProcess { // 이넘명: FoodProcess
        order,    // <-- 0
        takeAway, // <-- 1
        delivery, // <-- 2
        payment   // <-- 3
    }

    FoodProcess public foodStatus;
    constructor() {
        foodStatus = FoodProcess.payment; // 3 -> 0 -> 1 -> 2 순서
    }

    function orderFood() public {
        require(foodStatus == FoodProcess.payment, "It must be the payment status"); 
        // order 단계 체크: 이전 단계 수행여부 확인
        foodStatus = FoodProcess.order;
        emit Information("Order Success");
    }
    function takeAwayFood() public {
        require(foodStatus == FoodProcess.order, "It must be the order status"); 
        // takeAway 단계 체크: 이전 단계 수행여부 확인
        foodStatus = FoodProcess.takeAway;
        emit Information("TakeAway Success");
    }
    function deliveryFood() public {
        require(foodStatus == FoodProcess.takeAway, "It must be the takeAway status"); 
        // delivery 단계 체크: 이전 단계 수행여부 확인
        foodStatus = FoodProcess.delivery;
        emit Information("Delivery Success");
    }
    function paymentFood() public {
        require(foodStatus == FoodProcess.delivery, "It must be the delivery status"); 
        // payment 단계 체크: : 이전 단계 수행여부 확인
        foodStatus = FoodProcess.payment;
        emit Information("Payment Success");
    }
}