package com.eomcs.oop.ex02.test;
import com.eomcs.oop.ex02.test.domain.Score3;

public class Test {

  public static void main (String[] args) {

    Score3 s1 = new Score3("홍길동",100,90,85);

    printfscore(s1);

    Score3 s2 = new Score3("임꺽정",90,80,75);

    printfscore(s2);

    Score3 s3 = new Score3("유관순",80,60,53);

    printfscore(s3);
  }


  static void printfscore(Score3 s) {


    System.out.printf("%s: %d, %d, %d, %d, %.1f\n", s.name, s.kor, s.eng, s.math, s.sum, s.aver);
  }


}


