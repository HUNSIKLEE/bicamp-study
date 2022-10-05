package com.bitcamp.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bitcamp.board.domain.Member;
import com.bitcamp.board.service.MemberService;

@WebServlet("/member/update")
public class MemberUpdateController extends HttpServlet{

  private static final long serialVersionUID = 1L;


  MemberService memberService;

  @Override
  public void init() {
    memberService = (MemberService) this.getServletContext().getAttribute("memberService");
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    try {
      request.setCharacterEncoding("UTF-8");
      Member member = new Member();
      member.setNo(Integer.parseInt(request.getParameter("no")));
      member.setName(request.getParameter("name"));
      member.setEmail(request.getParameter("email"));
      member.setPassword(request.getParameter("password"));

      if (!memberService.update(member)) {
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
      //      response.setHeader("Refresh", "1;url=list");// 응답헤더에 refresh에서 삽입 할수 있다.
      //      response.setContentType("text/html;charset=UTF-8");// JSP가 출력할 콘텐트의 MIME 타입 설정
      //      request.getRequestDispatcher("/member/update.jsp").include(request, response); // JSP를 실행한 후 리턴된다.
      response.sendRedirect("list");

    }catch (Exception e) {
      request.setAttribute("exception", e);
      request.getRequestDispatcher("/error.jsp").forward(request, response); 

      // JSP를 실행하기 전에 오류 ServletRequest 보관소에 오류 정보를 담는다.

      // forward(): 예외가 발생하면 기존의 출력 내용을 모두 버린다.
      // JSP에게 처음부터 새로 출력하게 전권을 위임한다. 


    }
  }
}
