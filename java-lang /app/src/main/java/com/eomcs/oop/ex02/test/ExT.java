package com.eomcs.oop.ex02.test;
import com.eomcs.oop.ex02.util.Calculator2;

//4) 클래스 변수의 한계 확인
//5) 인스턴스 변수 도입
//6) 인스턴스 메서드 활용
//7) 패키지 멤버 클래스로 분리
//8) 클래스를 역할에 따라 패키지로 분류하기


public class ExT {

  public static void main(String[] args) {
    // 다음 식을 연산자 우선 순위를 고려하지 않고 순서대로 계산하라!
    // 2 + 3 - 1 * 7 / 3 = ?

    // 계산 결과를 담을 변수를 준비한다.
    Calculator2 c1 = new Calculator2();
    Calculator2 c2 = new Calculator2();

    // 메서드를 호출하여 작업을 수행하고,
    // 리턴 결과는 로컬 변수에 저장한다.
    c1.plus(2);
    c2.plus(3);

    c2.plus(3);
    c2.multiple(2);

    c1.minus(1);
    c2.plus(7);

    c2.multiple(7);
    c1.divide(4);


    c1.divide(3);
    c2.multiple(5);

    System.out.printf("c1.result = %d\n", c1.reslut);

    System.out.printf("c2.result = %d\n", c2.reslut);

  }

}
