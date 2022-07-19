package com.eomcs.oop.ex02.domain;

// 다른 패키지에서도 쓸수 있도록 public 공개한다.
public class Score {

  public String name; // 설계도 안에는 보통 필드라고 한다.
  public int kor;
  public int eng;
  public int math;
  public int sum;
  public float aver;

  public static void compute(Score s) {

    s.sum = s.kor + s.eng + s.math;
    s.aver = (float) s.sum / 3;

  }
}
