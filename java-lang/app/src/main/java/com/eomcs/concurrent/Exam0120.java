// 멀티 스레드 적용 전 - 멀티 태스킹을 적용하기 전
package com.eomcs.concurrent;

public class Exam0120 {

  public static void main(String[] args) {

    int count = 1000;

    MyThread t = new MyThread(count);
    t.start();    
    
    for (int i = 0; i < count; i++) {
      System.out.println("==> " + i);
    }

    for (int i = 0; i < count; i++) {
      System.out.println(">>> " + i);
    }
  }
}


