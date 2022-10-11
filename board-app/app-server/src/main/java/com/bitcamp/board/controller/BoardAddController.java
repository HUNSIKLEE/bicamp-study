package com.bitcamp.board.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import com.bitcamp.board.domain.AttachedFile;
import com.bitcamp.board.domain.Board;
import com.bitcamp.board.domain.Member;
import com.bitcamp.board.service.BoardService;
<<<<<<< HEAD

@Controller // 페이지 컨트롤러에 붙이는 에노테이션
// 애노테이션을 붙일 떄 객체 이름을 명시하면 그 이름으로 저장한다.
// - 프론트 컨트롤럴는 페이지 컨트로럴를 찾 을 때 이 이름으로 찾을 것이다.

public class BoardAddController{
=======
   
@MultipartConfig(maxFileSize = 1024 * 1024 * 10) 
@WebServlet("/board/add")
public class BoardAddController extends HttpServlet {
  private static final long serialVersionUID = 1L;
>>>>>>> 2c39e2fde93ce77fe57609386799637799b731d1

  BoardService boardService;


  public BoardAddController(BoardService boardService) {
    this.boardService = boardService;
  }


  @PostMapping("/board/add") // 요청이 들어 왔을 때 호출될 메서드에 붙이는 에노테이션 
  public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
    request.setCharacterEncoding("UTF-8");

    Board board = new Board();
    board.setTitle(request.getParameter("title"));
    board.setContent(request.getParameter("content"));

    List<AttachedFile> attachedFiles = new ArrayList<>();
    String dirPath = request.getServletContext().getRealPath("/board/files");
    Collection<Part> parts = request.getParts();

    for (Part part : parts) {
      if (!part.getName().equals("files") || part.getSize() == 0) {
        continue;
      }

      String filename = UUID.randomUUID().toString();
      part.write(dirPath + "/" + filename);
      attachedFiles.add(new AttachedFile(filename));
    }
    board.setAttachedFiles(attachedFiles);

    Member loginMember = (Member) request.getSession().getAttribute("loginMember");
    board.setWriter(loginMember);

    boardService.add(board);
    return "redirect:list";
  }
}






