package com.bitcamp.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bitcamp.board.dao.MemberDao;
import com.bitcamp.board.domain.Member;

@WebServlet("/member/add")
public class MemberAddController extends HttpServlet{

  private static final long serialVersionUID = 1L;


  MemberDao memberDao;

  @Override
  public void init() {
    memberDao = (MemberDao) this.getServletContext().getAttribute("memberDao");
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    try {
      request.setCharacterEncoding("UTF-8");
      Member member = new Member();
      member.setName(request.getParameter("name"));
      member.setEmail(request.getParameter("email"));
      member.setPassword(request.getParameter("password"));

      if (memberDao.insert(member) == 0) {

        throw new Exception("게시글 등록 실패!");
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
      //   response.setHeader("Refresh", "1;url=list");// 응답헤더에 refresh에서 삽입 할수 있다.
      //      response.setContentType("text/html;charset=UTF-8");// JSP가 출력할 콘텐트의 MIME 타입 설정
      //      request.getRequestDispatcher("/board/add.jsp").include(request, response); // JSP를 실행한 후 리턴된다.



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
