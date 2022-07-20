package com.eomcs.oop.ex02.util;

public class Calculator2 {


  public int reslut = 0;

  public void plus(int value) {
    this.reslut += value;
  }

  public void minus(int value) {
    this.reslut -= value;
  }

  public void multiple(int value) {
    this.reslut *= value;
  }

  public void divide(int value) {
    this.reslut /= value;
  }

  public static int abs(int a) {
    return a >= 0 ? a : a * -1;
  }

}
