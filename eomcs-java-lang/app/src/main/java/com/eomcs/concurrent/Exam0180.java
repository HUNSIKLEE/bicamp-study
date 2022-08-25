// 익명 클래스의 인스턴스가 들어갈 자리에 익명
package com.eomcs.concurrent;

public class Exam0180 {

  public static void main(String[] args) {

    int count = 1000;
    
    
     new Thread() {

   @Override
   public void run() {
     for (int i = 0; i < count; i++) {
       System.out.println("=1=> " + i);
     }
    }
   }.start();
  
    for (int i = 0; i < count; i++) {
      System.out.println(">>> " + i);
    }
  }
}


