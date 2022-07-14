/*
 * 게시판 관리 애플리케이션
 * 비트캠프-20220704
 */
package com.bitcamp.board;

public class App {

  public static void main(String[] args) {
    welcome(); //welcome 메소드 실행시켜라
    loop: while (true) { // 한번실행시키고 끝나면 안되서 반복문 으로 무한루프돌림 무한루프는 while(true)랑 for(;;) 있음
      displayMenu();// displayMenu를 실행시켜라
      int menuNo = Prompt.inputInt("메뉴를 선택하세요[1..3](0: 종료) ");// 메모리에 4byte정수 공간을 만들고 prompt 클래스를 가져와서 실행시켜라
      displayLine();//displayLine를 실행시켜라

      switch (menuNo){// 사용자로부터 넘버를 입력받았을때 if문보다는 스위치문이 간결함
        case 0: break loop; // 0을 입력받으면 loop 위치인 while 문 밖으로 나가라
        case 1: BoardHandler.processList(); break;// BoardHandler클래스에 processLisr를 실행시켜라
        case 2: BoardHandler.processDetail(); break;// BoardHandler클래스에 processDetail를 실행시켜라
        case 3: BoardHandler.processInput(); break;// BoardHandler클래스에 processInput를 실행시켜라
        default:System.out.println("메뉴 번호가 옳지 않습니다!");//그외 나머지 숫자들 디폴트 실행
      }
      displayBlankLine();// 와일문 다돌고 나오면 displayBlankLine 을 호출하라.
    } // while

    System.out.println("안녕히 가세요!");
    Prompt.close();
  } // main

  static void welcome() {
    System.out.println("[게시판 애플리케이션]");
    System.out.println();
    System.out.println("환영합니다!");
    System.out.println();
  }


  static void displayMenu() {
    System.out.println("메뉴:");
    System.out.println("  1: 게시글 목록");
    System.out.println("  2: 게시글 상세보기");
    System.out.println("  3: 게시글 등록");
    System.out.println();

  }

  static void displayLine() {
    System.out.println("===========================================");
  }

  static void displayBlankLine() {

    System.out.println();

  }
}
