package com.eomcs.oop.ex02;

// 다른 패키지에서도 쓸수 있도록 public 공개한다.
public class Score {


  //다른 패키지에서 이 설계도에 따라 만든 변수에 접근할 수 있도록 접근 범위를 넓힌다.
  String name; // 설계도 안에는 보통 필드라고 한다.
  int kor;
  int eng;
  int math;
  int sum;
  float aver;

  //다른 패키지에서 메서드를 사용할 수 있도록 공개한다.
  static void compute(Score s) {

    s.sum = s.kor + s.eng + s.math;
    s.aver = (float) s.sum / 3;

  }
}
