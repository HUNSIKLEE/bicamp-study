// 로컬 클래스를 익명 클래스로 만든다.

package com.eomcs.concurrent;

public class Exam0260 {

  public static void main(String[] args) {
    
    int count = 1000;
    
   Runnable r =  new Runnable (){
       public void run() {
         for (int i = 0; i < count; i++) {
           System.out.println("==> " + i);
         }
      }
     };
    
    new Thread(r).start();
    
    
    for (int i = 0; i < count; i++) {
      System.out.println(">>> " + i);
    }
  }
  

}



