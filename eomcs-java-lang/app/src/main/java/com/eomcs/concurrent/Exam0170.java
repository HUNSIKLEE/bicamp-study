// 로컬클래스를 익명 클래스로 만든다.
package com.eomcs.concurrent;

public class Exam0170 {

  public static void main(String[] args) {

    int count = 1000;
    
 Thread t = new Thread() {

    @Override
    public void run() {
      for (int i = 0; i < count; i++) {
        System.out.println("=1=> " + i);
      }
     }
    };
    
  t.start();
  
    for (int i = 0; i < count; i++) {
      System.out.println(">>> " + i);
    }
  }
}


