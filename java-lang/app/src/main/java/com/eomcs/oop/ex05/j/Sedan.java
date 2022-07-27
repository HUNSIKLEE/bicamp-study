package com.eomcs.oop.ex05.j;

// 기존의 Car 클래스를 상속 받아 특별한 기능을 덧붙인다.
// - specialization 이라 한다.
//

public class Sedan extends Car {
  @Override
  public void run() {
    System.out.println("쌩쌩 달린다."); // 수퍼클래스의 메서드를 현재클래스의 역할에 맞춰 재정의(Overriding)
  }

  public void doSunroof(boolean open) {
    if (open) {
      System.out.println("썬루프를 연다.");
    } else {
      System.out.println("썬루프를 닫는다.");
    }
  }
}
