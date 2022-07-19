package com.eomcs.oop.ex02.domain;

// 다른 패키지에서도 쓸수 있도록 public 공개한다.
public class Score2 {

  public String name; // 설계도 안에는 보통 필드라고 한다.
  public int kor;
  public int eng;
  public int math;
  public int sum;
  public float aver;


  //new 연산자를 이용 하여 인스턴스를 만들 때 자동으로 호출되는 메서드
  // => 생성자(constructor)
  // - 메서드
  //

  public Score2(String n, int k, int e,int m) {
    this.name = n;
    this.kor = k;
    this.eng = e;
    this.math = m;

    this.compute();
  }
  public void compute() {
    this.sum = this.kor + this.eng + this.math;
    this.aver = (float) this.sum / 3;

  }
}
