package com.bitcamp.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bitcamp.board.dao.BoardDao;
import com.bitcamp.board.domain.Board;

@WebServlet("/board/update")
public class BoardUpdateController extends HttpServlet{

  private static final long serialVersionUID = 1L;


  BoardDao boardDao;

  @Override
  public void init() {
    boardDao = (BoardDao) this.getServletContext().getAttribute("boardDao");
  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    try {
      Board board = new Board();
      board.no = Integer.parseInt(request.getParameter("no"));
      board.title = request.getParameter("title");
      board.content = request.getParameter("content");

      if (boardDao.update(board) == 0) {
        throw new Exception("게시글 변경 실패!");
      }

      // Refresh
      // 응답 프로토콜 
      // HTTP/1.1 302
      // Location: list
      // Content-Length: 0
      // Date: Mon, 26 Sep 2022 05:21:25 GMT
      // Keep-Alive: timeout=20
      // Connection: keep-alive
      // 컨텐트가 있고, 200이다.
      // 자바코드 : 
      response.setHeader("Refresh", "1;url=list");// 응답헤더에 refresh에서 삽입 할수 있다.
      response.setContentType("text/html;charset=UTF-8");// JSP가 출력할 콘텐트의 MIME 타입 설정
      request.getRequestDispatcher("/board/update.jsp").include(request, response); // JSP를 실행한 후 리턴된다.


    }catch (Exception e) {
      request.setAttribute("exception", e);
      request.getRequestDispatcher("/error.jsp").forward(request, response); 

      // JSP를 실행하기 전에 오류 ServletRequest 보관소에 오류 정보를 담는다.

      // forward(): 예외가 발생하면 기존의 출력 내용을 모두 버린다.
      // JSP에게 처음부터 새로 출력하게 전권을 위임한다. 


    }
  }
}
