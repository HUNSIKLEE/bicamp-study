/*
 * 게시글 메뉴 처리 클래스
 */
package com.bitcamp.board;

import java.util.Date;

public class BoardHandler {
  //모든 게시판 공유하는 데이터는 클래스 변수에 저장한다.
  //왜? 클래스 변수는 클래스 로딩할 때 한 번만 생성되기 때문이다.

  String title;

  BoardList boardList = new BoardList();
  // Board 인스턴스의 주소를 저장할 레퍼런스 배열을 만든다.

  //  Board[] boards = new Board[DEFAULT_SIZE];
  //String title = "게시판";

  //생성자를 사용하는 목적: 메소드를  실행할떄 필요한 값을 강제로 설정하게 만들수 있다.
  //클래스 생성자가 정의되어 있지 않으면 컴파일러가
  //다음과 같이 파라미터가 없는 기본 생성자를 컴파일러가 자동으로 추가된다.
  /* 기본 생성자?
   * 파라미터가 없다
   * 메서드 몸체는 비어 있다.
   메서드의 접근 범위는 무조건 공개 (public) 이다.
   */public  BoardHandler() { 
     this.title = "게시판";
   }

   //제목을 입력 받는 생성자
   BoardHandler(String title){
     this.title = title;
   }


   void execute() {
     // App 클래에서 이 메서드를 호출할 때 BoardHandler의 인스턴스 주소를 줄것이다.
     //그 주소는 this 라는 내장 변수에 보관된다

     while (true) {
       System.out.printf("[%s]:\n", this.title );
       System.out.println();
       System.out.println("  1: 목록");
       System.out.println("  2: 상세보기");
       System.out.println("  3: 등록");
       System.out.println("  4: 삭제");
       System.out.println("  5: 변경");
       System.out.println();

       int menuNo = Prompt.inputInt("메뉴를 선택하세요[1..5](0: 이전) ");

       displayHeadline();

       // 다른 인스턴스 메서드를 호출할때 this에 보관된 인스턴스 주소를 사용한다.
       //인스턴스 메소드는 인스턴스 주소없이 절대 호출할수 없다.
       switch (menuNo) {
         case 0: return;
         case 1: this.onList(); break; 
         case 2: this.onDetail(); break;
         case 3: this.onInput(); break;
         case 4: this.onDelete(); break;
         case 5: this.onUpdate(); break;
         default: System.out.println("메뉴 번호가 옳지 않습니다!");

       }

       displayBlankLine();
     } // while
   }
   static void displayHeadline() {
     System.out.println("=========================================");
   }

   static void displayBlankLine() {
     System.out.println(); // 메뉴를 처리한 후 빈 줄 출력
   }

   void onList() {
     java.text.SimpleDateFormat formatter = 
         new java.text.SimpleDateFormat("yyyy-MM-dd");

     System.out.printf("%s:\n", this.title );
     System.out.println("번호 제목 조회수 작성자 등록일");

     Board[] list =this.boardList.toArray();

     for (Board board : list) {
       // 밀리초 데이터 ==> Date 도구함으로 날짜 정보를 설정
       Date date = new Date(board.createdDate);
       // 날짜 정보 ==> "yyyy-MM-dd" 형식의 문자열
       String dateStr = formatter.format(date); 

       System.out.printf("%d\t%s\t%d\t%s\t%s\n",
           board.no, board.title, board.viewCount, board.writer, dateStr);
     }

   }

   void onDetail() {
     System.out.printf("[%s목록]:\n", this.title );

     int boardNo = Prompt.inputInt("조회할 게시글 번호? ");

     // 해당 번호의 게시글이 몇 번 배열에 들어 있는지 알아내기
     Board board = this.boardList.get(boardNo);


     // 사용자가 입력한 번호에 해당하는 게시글을 못 찾았다면
     if (board == null) {
       System.out.println("해당 번호의 게시글이 없습니다!");
       return;
     }

     System.out.printf("번호: %d\n", board.no);
     System.out.printf("제목: %s\n", board.title);
     System.out.printf("내용: %s\n", board.content);
     System.out.printf("조회수: %d\n", board.viewCount);
     System.out.printf("작성자: %s\n", board.writer);
     Date date = new Date(board.createdDate);
     System.out.printf("등록일: %tY-%1$tm-%1$td %1$tH:%1$tM\n", date);

   }

   void onInput() {
     System.out.printf("[%s등록]:\n", this.title );

     Board board = new Board();

     board.title = Prompt.inputString("제목? ");
     board.content = Prompt.inputString("내용? ");
     board.writer = Prompt.inputString("작성자? ");
     board.password = Prompt.inputString("암호? ");
     board.viewCount = 0;
     board.createdDate = System.currentTimeMillis();

     // 새로 만든 인스턴스 주소를 레퍼런스 배열에 저장한다.
     this.boardList.add(board);

     System.out.println("게시글을 등록했습니다.");
   }

   void onDelete() {
     System.out.printf("[%s삭제:]\n", this.title );

     int boardNo = Prompt.inputInt("삭제할 게시글 번호? ");

     if (boardList.remove(boardNo)) {
       System.out.println("삭제하였습니다.");
     } else {
       System.out.println("해당 번호의 게시글이 없습니다!");
       return;
     }
   }

   void onUpdate() {
     System.out.printf("[%s변경:\n", this.title );

     int boardNo = Prompt.inputInt("변경할 게시글 번호? ");

     Board board = this.boardList.get(boardNo);



     if (board == null) {
       System.out.println("해당 번호의 게시글이 없습니다!");
       return;
     }

     String newTitle = Prompt.inputString("제목?(" + board.title + ") ");
     String newContent = Prompt.inputString(String.format("내용?(%s) ", board.content));

     String input = Prompt.inputString("변경하시겠습니까?(y/n) ");
     if (input.equals("y")) {
       board.title = newTitle;
       board.content = newContent;
       System.out.println("변경했습니다.");
     } else {
       System.out.println("변경 취소했습니다.");
     }
   }
}




