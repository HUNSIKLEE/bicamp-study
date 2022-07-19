package com.eomcs.oop.ex02.test;
import com.eomcs.oop.ex02.domain.Score4;

public class Test{

  public static void main (String[] args) {


    Score4 s1 = new Score4("홍길동",100,90,70);

    printScore(s1);

    Score4 s2 = new Score4("린트",60,30,20);

    printScore(s2);

    Score4 s3 = new Score4("유관순",80,60,10);

    printScore(s3);
  }

  static void printScore(Score4 s) {

    System.out.printf("%s: %d, %d, %d, %d, %.1f\n", s.name, s.kor, s.eng, s.math, s.sum, s.aver);

  }



}

