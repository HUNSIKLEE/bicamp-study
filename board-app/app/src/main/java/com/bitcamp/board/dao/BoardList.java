package com.bitcamp.board.dao;

import com.bitcamp.board.domain.Board;
import com.bitcamp.util.ObjectList;

// 게시글 목록을 관리하는 역할
//
public class BoardList extends ObjectList {

  private int boardNo = 0;

  @Override
  public void add(Object e) {
    Board board = (Board) e;
    board.no = nextNo();
    super.add(e);
  }

  // 수퍼 클래스의 get() 메서드를 호출했을 때 예외가 발생하면,
  // 서브 클래스의 get() 메서드에서 처리할 상황이 아니다.
  // 서브 클래스의 get()을 호출한 쪽에 보고하는 것이 더 낫다.
  // 이럴경우 try ~ catch ~ 를 쓰지 말고 메서드 선언부에 발생되는 예외를 표시하라!
  @Override

  //objectList의 get()에서 던지는 예외를 이 메서드에서 처리하지 
  // 않고 호출자에게 처리를 위임한다.=>ListException은
  //RuntimeException 계열이기 때문에 메서드 선언부에 표시하지 않아도
  //되고 Exception 계열의 예외를 다루는 것보다 덜 번거롭다.
  public Board get(int boardNo) { 
    for (int i = 0; i < size(); i++) {
      Board board = (Board) super.get(i);
      if (board.no == boardNo) {
        return board;
      }
    }
    return null;
  }

  // 수퍼 클래스의 remove() 메서드를 호출했을 때 예외가 발생하면,
  // 서브 클래스의 remove() 메서드에서 처리할 상황이 아니다.
  // 서브 클래스의 remove()를 호출한 쪽에 보고하는 것이 더 낫다.
  // 이럴경우 try ~ catch ~ 를 쓰지 말고 메서드 선언부에 발생되는 예외를 표시하라!
  @Override
  public boolean remove(int boardNo) {
    for (int i = 0; i < size(); i++) {
      Board board = (Board) super.get(i);
      if (board.no == boardNo) {
        return super.remove(i);
      }
    }

    return false;
  }

  private int nextNo() {
    return ++boardNo;
  }
}














