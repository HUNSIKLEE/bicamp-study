package com.eomcs.quiz.ex01;
// copyright by codefights.com
// 
// 양의 정수 값이 주어질 때, 가장 자릿수를 알아내라!
//
// 형식:
//   maxDigit(정수값)
// 예) 
//   maxDigit(5874) ==> 8
// 
//
/*
Find the largest digit of the given number.

[input] integer n
non-negative integer

[output] integer
largest digit of n
 */
//
// [시간 복잡도]
// - ?
//
public class Test29 {

  public static void main(String[] args) {
    System.out.println(maxDigit(5874) == 8);
    System.out.println(maxDigit(5143) == 5);
    System.out.println(maxDigit(5178) == 8);
  }

  static int maxDigit(int n) {
    int result = 0;

    /*
    while (n > 0) {
      result = (n % 10) > result ? (n % 10) : result;
    }*/

    while (n > 0) {
      if((n % 10 ) > result ) {
        result = (n % 10);
      }
      n /= 10;
    } 

    /*
    while (n > 0) {
      result = Math.max(result, n%10);
      result /=10;
    }*/


    return result;
  }
}
