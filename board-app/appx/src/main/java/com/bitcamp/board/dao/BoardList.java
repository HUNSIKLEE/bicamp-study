package com.bitcamp.board.dao;

import com.bitcamp.board.domain.Board;

// 게시글 목록을 관리하는 역할
//
public class BoardList extends ObjectList{

  private int no = 0;


  // 생성자
  // 목록에 저장된 인스턴스를 꺼내서 리턴한다.


  //수퍼 클래스의 get() 메서드는 BoardList에 맞게 재정의 한다.
  //=> 파라미터는 인덱스가 아닌 게시글 번호가 되게 한다.
  //Overriding이라 부른다.


  //그래서 Board 객체를 다루기에 적합 하지 않다.
  //따라서 다음 메서드처럼 Board 객체를 조회하는데 적합한 메서드를 추가한다.
  //이 메서드는 게시글 번호에 해당하는 Board 인스턴스를 찾아 리턴한다.
  @Override
  public  Board get(int boardNo) {


    for (int i = 0; i < this.length; i++) {
      Board board = (Board) this.list[i];//object 배열에 실제 들어있는것은 Board라고 컴파일러한테 말해준

      if (board.no == boardNo) {
        return board;
      }
    }
    return null;
  }

  // 슈퍼 클래스의 add(object)  서브클래스에 맞춰서 재정의 한다.
  // => 파라미터로 받은 Board 인스턴스의 no 변수 값을 설정한 다음에 배열에 추가한다.
  //이것을 전형적인 Overiding 이라 한다.
  @Override
  public void add(Object obj) {
    Board board = (Board) obj;
    board.no = nextNo();
    super.add(board);// 바로위에서부터 찾아 올라가서 찾을떄까지 찾는거. this는 현재 자신폴더부터 찾을때 까지 올라감
    //슈퍼 클래스의 add()를사용하여  처리
  }

  //슈퍼 클래스의 remove()를 BoardList  클래스의 역할에 맞춰 재정의한다.

  @Override
  public boolean remove(int boardNo) {
    int boardIndex = -1;
    for(int i = 0; i < this.length; i++) {
      Board board = (Board) this.list[i];
      if(board.no == boardNo) {
        boardIndex = i;
        break;
      }
    }
    return super.remove(boardIndex); // 재정의 하기전에 슈퍼 클래스의 메서드를 호출한다.
  }




  private int nextNo() {
    return ++no;
  }
}














