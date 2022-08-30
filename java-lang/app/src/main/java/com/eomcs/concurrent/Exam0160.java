// 멀티 스레드 적용 전 - 멀티 태스킹을 적용하기 전
package com.eomcs.concurrent;

public class Exam0160 {

  public static void main(String[] args) {

    int count = 1000;
    
  class MyThread extends Thread {
      
    //컴파일러가 주석친 바깥 메서드의 count 변수 값을 담을 수 있도록 필드를 자동으로 생선한다.
     // int count; 
      //컴파일러가 바깥 메서드의 count 변수를 값을 필드에담을 수 있게
    //생성자에 파라미터를 추가하고 필드에 파라미터 값을 저장하는 코드를 자동 생성한다.
//      public MyThread(int count) {
//        this.count = count;
//      }

    @Override
    public void run() {
      for (int i = 0; i < count; i++) {
        System.out.println("=1=> " + i);
      }
     }
    }

  //컴파일러가 MyThread 생성자를 호출할 때 count 변수의 값을 넘기는
  //코드를 자동으로 생성할 것 이니 개발자가 직접 넘길 필요가 없다.
    
  new MyThread().start();
    //new MyThread(count).start();
    


    for (int i = 0; i < count; i++) {
      System.out.println(">>> " + i);
    }
  }
  
  


}


