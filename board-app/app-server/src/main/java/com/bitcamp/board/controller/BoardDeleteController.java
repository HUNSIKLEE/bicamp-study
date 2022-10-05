package com.bitcamp.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bitcamp.board.domain.Member;
import com.bitcamp.board.service.BoardService;

@WebServlet("/board/delete")
public class BoardDeleteController extends HttpServlet{

  private static final long serialVersionUID = 1L;


  BoardService boardService;

  @Override
  public void init() {
    boardService = (BoardService) this.getServletContext().getAttribute("boardService");
  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    try {
      int no = Integer.parseInt(request.getParameter("no"));

      Member loginMember = (Member) request.getSession().getAttribute("loginMember");
      if (boardService.get(no).getWriter().getNo() != loginMember.getNo()) {
        throw new Exception("게시글 작성자가 아닙니다.");
      }

      if(!boardService.delete(no)) {
        throw new Exception("게시글을 삭제할 수 없습니다!");
      }
      // Redirect
      // 클라이언트에게 콘텐트를 보내지 않는다.
      // 응답 프로토콜
      // HTTP/1.1 302       <== 응답 상태 코드 
      // Location: list     <== 자동으로 요청할 URL
      // Content-Length: 0  <== 콘텐트는 보내지 않는다.
      // Date: Mon, 26 Sep 2022 05:21:25 GMT
      // Keep-Alive: timeout=20
      // Connection: keep-alive

      // 컨텐트가 없다. 302다.
      // 자바 코드 : 
      response.sendRedirect("list");

    }catch (Exception e) {
      // 예외가 발생하면 예외를 처리하는 JSP에게 UI 생성을 위임한다.
      request.setAttribute("exception", e);
      request.getRequestDispatcher("/error.jsp").forward(request, response); 

      // JSP를 실행하기 전에 오류 ServletRequest 보관소에 오류 정보를 담는다.

      // forward(): 예외가 발생하면 기존의 출력 내용을 모두 버린다.
      // JSP에게 처음부터 새로 출력하게 전권을 위임한다. 


    }
  }
}
