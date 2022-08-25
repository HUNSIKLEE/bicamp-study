//  익명 클래스 코드를 메서드 파라미터에 직접 넣는다.
package com.eomcs.concurrent;

public class Exam0270 {

  public static void main(String[] args) {
    
    int count = 1000;
    
    
    new Thread(new Runnable (){
      public void run() {
        for (int i = 0; i < count; i++) {
          System.out.println("==> " + i);
        }
     }
    }).start();
    
    
    for (int i = 0; i < count; i++) {
      System.out.println(">>> " + i);
    }
  }
  

}



