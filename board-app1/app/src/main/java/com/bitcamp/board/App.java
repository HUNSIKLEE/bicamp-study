/*
 * 게시판 관리 애플리케이션
 * 비트캠프-20220704
 */
package com.bitcamp.board;

public class App {
  public static void main(String[] args) {

    System.out.println("[게시판 애플리케이션]");
    System.out.println();
    System.out.println("환영합니다!");
    System.out.println();

    java.util.Scanner keyboardInput = new java.util.Scanner(System.in);
    java.sql.Date now = new java.sql.Date(System.currentTimeMillis());
/* 
    String[] titles = new String[1000];
    String[] contents = new String[1000];
    String[] writers = new String[1000];
    String[] passwords = new String[1000];
*/
    String title = "";
    String content = "";
    String writer = "";
    String password = "";

    while (true) {
      System.out.println("메뉴:");
      System.out.println("  1: 게시글 목록");
      System.out.println("  2: 게시글 상세보기");
      System.out.println("  3: 게시글 등록");
      System.out.println();
      System.out.print("메뉴를 선택하세요[1..3](0: 종료) ");
      
      int menuNo = keyboardInput.nextInt();
      keyboardInput.nextLine(); // 입력한 숫자 뒤에 남아 있는 줄바꿈 코드 제거

      if (menuNo == 0) {
        break;
      } else if (menuNo == 1) {
        System.out.println("[게시글 목록]");
        System.out.println("번호 \t제목 \t\t조회수 \t작성자 \t등록일");

        System.out.print(1);
        System.out.print("\t");
        System.out.print("제목입니다1");
        System.out.print('\t');
        System.out.print(20 + "\t");
        System.out.print("홍길동\t");
        System.out.print(now);

        System.out.print("2" + "\n\t" + "제목입니다2\t" +
            11 + "\t" + "홍길동\t" + now);

        System.out.println("3" + "\n\t제목입니다3\t" +
            31 + "\t" + "임꺽정\t"+now);

        System.out.printf("%d\t%s\t%d\t%s\t%s\n",
            4, "제목입니다4", 45, "유관순", now);
      } else if (menuNo == 2) {
        System.out.println("[게시글 상세보기]");

        System.out.printf("번호: %d\n", 1);
        System.out.printf("제목: %s\n", title);
        System.out.printf("내용: %s\n", content);
        System.out.printf("조회수: %d\n", 100);
        System.out.printf("작성자: %s\n", writer);
        System.out.printf("등록일: %s\n", now);
      } else if (menuNo == 3) {
        System.out.println("[게시글 등록]");

        System.out.print("제목? ");
        title = keyboardInput.nextLine();

        System.out.print("내용? ");
        content = keyboardInput.nextLine();

        System.out.print("작성자? "); 
        writer = keyboardInput.nextLine();

        System.out.print("암호? ");
        password = keyboardInput.nextLine();

      } else {
        System.out.println("메뉴 번호가 옳지 않습니다!");
      }

      System.out.println(); // 메뉴를 처리한 후 빈 줄 출력
    } // while

    System.out.println("안녕히 가세요!");
    keyboardInput.close();
  }
}
