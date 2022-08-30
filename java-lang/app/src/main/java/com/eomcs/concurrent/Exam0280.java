//  익명 클래스 코드를 람다표현식으로 바꾼다
package com.eomcs.concurrent;

public class Exam0280 {

  public static void main(String[] args) {
    
    int count = 1000;
    
    
    new Thread(()-> {
        for (int i = 0; i < count; i++) {
          System.out.println("==> " + i);
        }
      }).start();
    
    
    for (int i = 0; i < count; i++) {
      System.out.println(">>> " + i);
    }
  }
  

}



