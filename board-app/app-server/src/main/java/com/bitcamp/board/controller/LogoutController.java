package com.bitcamp.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller // 페이지 컨트롤러에 붙이는 에노테이션
public class LogoutController {

  @GetMapping("/auth/logout")
  public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

    HttpSession session = request.getSession();
    session.invalidate(); // 현재 세션을 무효화시킨다.
    return"redirect:../../"; // 로그아웃 한 후 메인 페이지를 요청하라고 응답한다.
  }
}






