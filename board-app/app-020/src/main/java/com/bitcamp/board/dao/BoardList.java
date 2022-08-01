package com.bitcamp.board.dao;

import com.bitcamp.board.domain.Board;
import com.bitcamp.util.LinkedList;

// 게시글 목록을 관리하는 역할
//
public class BoardList extends LinkedList {

  private int boardNo = 0;

  @Override
  public void append(Object e) {
    Board board = (Board) e;
    board.no = nextNo();
    super.append(e);
  }

  // ObjectList의 get()에서 던지는 예외를 이 메서드에서 처리하지 않고
  // 호출자에게 처리를 위임한다.
  // => ListException은 RuntimeException 계열이기 때문에 
  //    메서드 선언부에 표시하지 않아도 된다.
  //    Exception 계열의 예외를 다루는 것 보다 덜 번거롭다.
  //
  @Override
  public Board retrieve(int boardNo) {
    for (int i = 0; i < length(); i++) {
      Board board = (Board) super.retrieve(i);
      if (board.no == boardNo) {
        return board;
      }
    }
    return null;
  }

  // ObjectList의 get()에서 던지는 예외를 이 메서드에서 처리하지 않고
  // 호출자에게 처리를 위임한다.
  // => ListException은 RuntimeException 계열이기 때문에 
  //    메서드 선언부에 표시하지 않아도 된다.
  //    Exception 계열의 예외를 다루는 것 보다 덜 번거롭다.
  //
  @Override
  public Object delete(int boardNo) {
    for (int i = 0; i < length(); i++) {
      Board board = (Board) super.retrieve(i);
      if (board.no == boardNo) {
        return super.delete(i);
      }
    }

    return null;
  }

  private int nextNo() {
    return ++boardNo;
  }
}














