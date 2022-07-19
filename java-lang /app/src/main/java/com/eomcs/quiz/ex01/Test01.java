package com.eomcs.quiz.ex01;

// [문제] 
// 파라미터로 주어진 정수 값을 2진수로 표현했을 때 1로 설정된 비트의 개수를 구하라!
// [훈련 목표]
// - 관계 연산자 및 비트 연산자, 비트 이동 연산자 활용
// - 반복문 활용
// - 메서드 파라미터 및 리턴 값 다루기
//
public class Test01 {

  public static void main(String[] args) {
    int c = countBits(0b01100011);
    System.out.println(c == 4); // true

    c = countBits(0b01010111_01100011);
    System.out.println(c == 9); // true
  }

  static int countBits(int value) {
    int r = 0;
    while (value != 0) {
      r += (value & 1); // r = 1 &연산자는 0000 0001을 넣어 마지막이 1이면 1이고 아니면 다 0이다. 맨 하위 비트를 추출
      //value = value >>> 1;
      value >>>= 1; // r =2  다음 1을 뽑아내기 위해 오른쪽으로 한 칸 이동시킨다.
    }

    return r;
  }

}
