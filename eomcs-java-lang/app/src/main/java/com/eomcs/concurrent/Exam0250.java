//로컬 클래스의 특징을 활용하여 바깥 변수의 값을 받는 코드를 제거한다.
// 왜? 컴파일러가 자동으로 그런 일을 할 코드를 생성해주기 떄문이다.
package com.eomcs.concurrent;

public class Exam0250 {

  public static void main(String[] args) {
    
    int count = 1000;
    
   class MyRunnable implements Runnable {

       
       public void run() {
         
         for (int i = 0; i < count; i++) {
           System.out.println("==> " + i);
         }

      }

     }
    
    new Thread(new MyRunnable()).start();
    
    
    for (int i = 0; i < count; i++) {
      System.out.println(">>> " + i);
    }
  }
  

}



