// 스레드 사용 후 : Runnable 구현체를 패키지 멤버로 만들어 Thread로 실행한다.
package com.eomcs.concurrent;

public class Exam0220 {

  public static void main(String[] args) {

    int count = 1000;

    
    new Thread(new MyRunnable(count)).start();
    
//    MyRunnable r = new MyRunnable(count);
//    Thread t = new Thread(r);
//    t.start();
//    
    for (int i = 0; i < count; i++) {
      System.out.println(">>> " + i);
    }
  }
}

// 자바는 main() 메서드를 실행하는 한 개의 "실행 흐름"이 있다.
// 실행 흐름에 따라 순서대로 코드가 실행된다.


