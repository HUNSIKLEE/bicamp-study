package com.eomcs.oop.ex02.test.domain;

public class Score {

  String name;
  int kor;
  int eng;
  int math;
  int sum;
  float aver;

  void compute() {


    this.sum = this.kor + this.eng + this.math;
    this.aver = (float) this.sum / 3;

  }

}
