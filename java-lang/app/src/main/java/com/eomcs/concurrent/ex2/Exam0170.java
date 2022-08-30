// "system" 스레드 그룹에 소속된 스레드들
package com.eomcs.concurrent.ex2;

public class Exam0170 {

  public static void main(String[] args) {
    Thread main = Thread.currentThread();
    ThreadGroup mainGroup = main.getThreadGroup();
    ThreadGroup systemGroup = mainGroup.getParent();

    Thread[] arr = new Thread[100];
    int count = systemGroup.enumerate(arr, false);

    System.out.println("system 스레드 그룹에 소속된 스레드들:");
    for (int i = 0; i < count; i++) {
      System.out.println("   =>" + arr[i].getName());
    }
  }
}

// JVM의 스레드 계층도:
// system(TG)
// => Reference Handler(T)
// => Finalizer(T) // 가비지 컬렉터 같은 역활?
// => Signal Dispatcher(T)// 어떤신호가 들어오면 전달하는 쓰레드.
// => Attach Listener(T)// 이벤트가 발생하면 처리하는 쓰레드.
// => Notification Thread // 
// => main(TG)
// ...=> main(T) : main() 메서드를 호출한다.
// => InnocuousThreadGroup(TG)
