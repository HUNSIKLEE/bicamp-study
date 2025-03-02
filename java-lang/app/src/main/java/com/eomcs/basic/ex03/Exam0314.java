// 목록 조회: for(변수:Iterable 객체)
package com.eomcs.basic.ex03;

import java.util.Arrays;
import java.util.Iterator;

public class Exam0314 {

  static class MyList<E> implements Iterable<E>{
    Object[] list = new Object[5];
    int size;

    @Override
    public Iterator<E> iterator() {
      class MyListIterator implements Iterator<E> {
        MyList<E> myList;
        int cursor;

        public MyListIterator(MyList<E> myList) {
          this.myList = myList;
        }

        @Override
        public boolean hasNext() {
          System.out.println("hasNext()");
          return cursor < size;
        }
        @Override
        public E next() {
          System.out.println("next()");
          return myList.get(cursor++);
        }
      }
      return new MyListIterator(this);
    }

    public void add(E value) {
      list[size++] = value;
    }

    @SuppressWarnings("unchecked")
    public E get(int i) {
      return (E) list[i];
    }

    public int size() {
      return size;
    }

    public Object[] toArray() {
      Object[] arr = new Object[size];
      for (int i = 0; i < size; i++) {
        arr[i] = list[i];
      }
      return arr;
    }

    @SuppressWarnings("unchecked")
    public E[] toArray(E[] arr) {
      if (arr.length >= size) {
        for (int i = 0; i < size; i++) {
          arr[i] = (E) list[i];
        }
        return arr;

      } else {
        return (E[]) Arrays.copyOf(list, size, arr.getClass());
      }
    }
  }

  static class Member {
    String name;
    int age;

    public Member(String name, int age) {
      this.name = name;
      this.age = age;
    }
  }

  public static void main(String[] args) {

    Member m1 = new Member("홍길동", 20);
    Member m2 = new Member("임꺽정", 30);
    Member m3 = new Member("유관순", 17);

    MyList<Member> list = new MyList<>();
    list.add(m1);
    list.add(m2);
    list.add(m3);

    for (Member m : list) {
      System.out.printf("이름: %s, 나이: %d\n", m.name, m.age);
    }
  }
}





