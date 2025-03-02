package com.eomcs.quiz.ex01;
// copyright by codefights.com
// 
// 다각형의 내각의 합을 구하라!
//180도 *(n-2)
// 형식:
//   sumOfTheAngles(각의 수)
//   단, 각의 수는 3이상이다.
// 예) 
//   sumOfTheAngles(3) ==> 180
// 
//
/*
Find the sum of the angles of a convex n-gon for a given n.

Example

sumOfTheAngles(3) = 180

[input] integer n
a positive integer greater than or equal to 3

[output] integer
 */
//
// [시간 복잡도]
// - ?
//
public class Test31 {

  public static void main(String[] args) {
    System.out.println(sumOfTheAngles(3) == 180);
    System.out.println(sumOfTheAngles(4) == 360);
    System.out.println(sumOfTheAngles(5) == 540);
  }

  static int sumOfTheAngles(int n) {

    return 180 * (n-2);
  }
}
