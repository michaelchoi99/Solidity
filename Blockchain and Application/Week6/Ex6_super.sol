//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Student {

    string [] internal courses;

    function showCourses() public virtual returns(string [] memory) { 
        // virtual: 오버라이딩하려는 부모 스마트컨트랙트의 함수에 명시 
        
        delete courses; // 배열 초기화: 배열의 모든 것을 삭제 --> 배열의 길이 = 0
        courses.push("English");
        courses.push("Music");
        return courses;
    }
}

contract ArtStudent is Student {
 
    function showCourses() public override returns(string [] memory) {
        super.showCourses(); // super: 본래 함수의 모든 로직을 가져올 수 있다.
        courses.push("Art");
        return courses;
    }
}