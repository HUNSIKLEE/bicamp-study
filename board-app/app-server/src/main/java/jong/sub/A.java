package jong.sub;

import jong.JhWebServlet;

@JhWebServlet(value = "a class im")
public class A {
  // default constructor
  public A() {

  }

  // constructor with parameter
  public A(int c) {

  }

  // method 
  public int add(int a, int b) {
    return a + b;
  }
}
