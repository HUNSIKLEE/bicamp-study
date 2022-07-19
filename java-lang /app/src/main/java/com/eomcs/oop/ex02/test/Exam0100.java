package com.eomcs.oop.ex02.test;
import com.eomcs.oop.ex02.domain.Score3;
//0 낱개 변수 사용
//
public class Exam0100 {

  public static void main (String[] args) {


    Score3 s1 = new Score3("홍길동", 100, 90,80);


    printSorce(s1);

    Score3 s2 = new Score3("임꺽정", 90, 80,70);

    printSorce(s2);

    Score3 s3 = new Score3("유관순", 80, 70,60);

    printSorce(s3);
  }

  static void printSorce(Score3 s) {

    System.out.printf("%s: %d, %d, %d, %d, %.1f\n", s.name, s.kor, s.eng, s.math, s.sum, s.aver);



  }

}
