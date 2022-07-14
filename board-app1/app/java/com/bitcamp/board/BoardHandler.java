/*
 * 게시판 메뉴 처리 클래스
 * 비트캠프-20220704
 */
package com.bitcamp.board;

public class BoardHandler {

  static int boardCount = 0;

  static final int SIZE = 3;

  static int[] no = new int[SIZE];
  static String[] title = new String[SIZE];
  static String[] content = new String[SIZE];
  static String[] writer = new String[SIZE];
  static String[] password = new String[SIZE];
  static int[] viewCount = new int[SIZE];
  static long[] createdDate = new long[SIZE];

  static void processList() {
    java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
    //java.text.SimpleDateFormat 자바 기본 텍스트안에 심플데이터포맷 클래스에 formatter이라는 변수를 만들고 그안에 yyy MM dd 형식으로 데이터넣는다.
    {
      System.out.println("[게시글 목록]");
      System.out.println("번호 제목 조회수 작성자 등록일");

      for (int i = 0; i < boardCount; i++) {
        java.util.Date date = new java.util.Date(createdDate[i]); // 자바 유틸 데이터 클래스에 createdDate 변수를 넣고 배열i를 넣어 증가시킨값을 date에 넣는다.

        String dateStr = formatter.format(date); // String 으로 dateStr 변수를 만들고  변수안에 포맷터클래스안에 포맷이라는 데이터를 넣는다

        System.out.printf("%d\t%s\t%d\t%s\t%s\n",no[i],title[i],viewCount[i],writer[i],dateStr); // 배열이 포문으로 증가되면서 SIZE에 맞게 포문이 돌아가면서 값을 넣는다.
      }
    }
  }

  static void processDetail() {
    {
      System.out.println("[게시글 상세보기]");

      int boardNo = Prompt.inputInt("조회할 게시글 번호? "); // Prompt 클래스에서 inputInt는 4byte 정수 메소드를 호출해 숫자를 입력받는다. 

      int boardIndex = -1; // 보드 인덱스가 0이면 for문이 바로 끝나서 나가지기 때문에 -1로 설정한다 
      
      for (int i = 0; i < boardCount; i++) { 
        if (no[i] == boardNo) { //보드 넘버를 입력 받은 수를 찾기위해 포문돌린다.
          boardIndex = i;
          break;
        }
      }

      if (boardIndex == -1) { //boardIndex는 배열의 인덱스
        System.out.println("해당 번호의 게시글이 없습니다!");
        return;
      }

      System.out.printf("번호: %d\n", no[boardIndex]);
      System.out.printf("제목: %s\n", title[boardIndex]);
      System.out.printf("내용: %s\n", content[boardIndex]);
      System.out.printf("조회수: %d\n", viewCount[boardIndex]);
      System.out.printf("작성자: %s\n", writer[boardIndex]);
      java.util.Date date = new java.util.Date(createdDate[boardIndex]);
      System.out.printf("등록일: %tY-%1$tm-%1$td %1$tH:%1$tM\n", date);
    }
  }

  static void processInput() {
    {
      System.out.println("[게시글 등록]");

      if (boardCount == SIZE) { //boardCount 는 배열의 개수  ex)arr1[0],arr1[1],arr1[2] .... boardCount 1개
        System.out.println("게시글을 더이상 저장할 수 없습니다.");
        return;
      }

      title[boardCount] = Prompt.intpuString("제목? ");
      content[boardCount] = Prompt.intpuString("내용? ");
      writer[boardCount] = Prompt.intpuString("작성자? ");
      password[boardCount] = Prompt.intpuString("암호? ");

      no[boardCount] = boardCount == 0 ? 1 : no[boardCount - 1] + 1;

      viewCount[boardCount] = 0;
      createdDate[boardCount] = System.currentTimeMillis();

      boardCount++;
    }
  }
}
