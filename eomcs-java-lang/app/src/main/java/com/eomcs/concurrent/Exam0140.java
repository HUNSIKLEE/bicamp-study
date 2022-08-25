// 멀티 스레드 적용 전 - 멀티 태스킹을 적용하기 전
package com.eomcs.concurrent;

public class Exam0140 {

  public static void main(String[] args) {

    int count = 1000;

    new MyThread(count).start();
    
    for (int i = 0; i < count; i++) {
      System.out.println("==> " + i);
    }

    for (int i = 0; i < count; i++) {
      System.out.println(">>> " + i);
    }
  }
  
  
  static class MyThread extends Thread {
    
    int count;
    
    public MyThread(int count) {
      this.count = count;
    }

  @Override
  public void run() {
    for (int i = 0; i < count; i++) {
      System.out.println("=1=> " + i);
    }
   }
  }

}


