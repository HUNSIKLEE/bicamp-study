package com.eomcs.quiz.ex01;
// copyright by codefights.com
// 
// 문자열에 포함된 숫자의 합을 구하라.
// 예) 
//   sumUpNumbers("2 apples, 12 oranges") ==> 5
//
/*
Find the sum of all digits that occur in a string.

Example

sumUpNumbers("2 apples, 12 oranges") = 5

[input] string inputString

[output] integer
 */
//
// [시간 복잡도]
// - ? 
//
public class Test23 {

  public static void main(String[] args) {
    System.out.println(sumUpDigits("2 apples, 12 oranges") == 5);
  }

  static int sumUpDigits(String inputString) {
    int answer = 0;

    for (int i = 0; i < inputString.length(); i++) {
      char ch = inputString.charAt(i);
      if(ch >= '1' && ch <= '9') {
        answer += ch - '0';
      }
    }

    return answer;
  }
}
