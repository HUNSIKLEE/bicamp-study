// 멀티 스레딩(비동기 프로그래밍)의 문제점 - 사례 1 
package com.eomcs.concurrent.ex5;

public class Exam0110 {

  static class MyList {
    int[] values = new int[100];
    int size;

    public void add(int value) {
//       여러 스레드가 동시에 이 메서드에 진입하면 
//       배열의 값을 덮어쓰는 문제가 발생한다.
//       이렇게 여러 스레드가 동시에 접근했을 때 문제가 발생하는 코드 부분을
//       한국말 로는 치명적인 영역 영어로는 
//       "Critical Section" 또는 "Critical Region" 이라 부른다.
      
//       어떤 코드에 문제가 발생하는가?
//       같은 메모리(변수)를 동시에 접근할 때
//       다른 쓰레드가 쓴 값을 덮어 쓸수 있다.
      
//       해결책? 상호배제 기법 
//       한번에 한 스레드 만이 접근하도록 제한하면 된다.
//       Mutual Exclusion (상호 배제 -> Mutex 뮤텍스라 부른다.)
//       Semaphore(n) (n개 까지만 허용 나머지는 배제);
//       ex) Semaphore(1) 이것을 Mutex라 부른다.
//       ex) Semaphore(최대수용인원) 화장실이라 정하면 대변기 한칸 Semaphore(1) 이것을 Mutex라 부른다. 
//       자바에서는 Mutex를 문법으로 지원한다!
//       세마포어는 개발자가 프로그램 짜야한다.
      
      if (size >= values.length) {
        delay();
        return;
      }
      delay();
      values[size] = value;
      delay();
      size = size + 1;     
      delay();
    }

    public void print() {
      for (int i = 0; i < size; i++) {
        System.out.printf("%d:  %d\n", i, values[i]);
      }
    }

    public void delay() {
      int count = (int)(Math.random() * 1000);
      for (int i = 0; i < count; i++) {
        Math.atan(34.1234);
      }
    }
  }

  static class Worker extends Thread {
    MyList list;
    int value;

    public Worker(MyList list, int value) {
      this.list = list;
      this.value =  value;
    }

    @Override
    public void run() {
      for (int i = 0; i < 20; i++) {
        list.add(value);
      }
    }
  }

  public static void main(String[] args) throws Exception {
    MyList list = new MyList();

    Worker w1 = new Worker(list, 111);
    Worker w2 = new Worker(list, 222);
    Worker w3 = new Worker(list, 333);

    w1.start();
    w2.start();
    w3.start();

    Thread.sleep(10000);

    list.print();
  }

}
