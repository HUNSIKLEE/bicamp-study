package com.bitcamp.board.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import com.bitcamp.board.dao.MariaDBBoardDao;
import com.bitcamp.board.dao.MariaDBMemberDao;

// 이 서블릿은 다른 서블릿이 사용할 객체를 준비하는 일을 한다.
// 
@WebServlet(
    value="/init", 
    loadOnStartup = 1)
public class AppInitServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;


  @Override
  public void init() throws ServletException {
    // 톰캣서버 --> init(ServletConfig) --> init()를 호출한다.
    // 톰캣서버가 init(ServletConfig)메소드를 호출하면 init(ServletConfig) 메소드가 init()를 호출한다.
    // 어차피 init(ServletConfig)가 init()를 호출하니까 바로 사용하면 된다.

    System.out.println("공유 자원을 준비 중!");
    try {
      Class.forName("org.mariadb.jdbc.Driver");

      Connection con = DriverManager.getConnection(
          "jdbc:mariadb://localhost:3306/studydb","study","1111");

      // 생성자는 단순히 객체만 생성하는것.
      // init는 뭐냐면 객채를 생성하고난다음에 그 객체가 사용할 자원들을 
      // 어플리케이션 서버, 톰캣 서버가 준비를 한다.
      // 준비가 끝난 상태에서 마지막으로 한번 너도 생성됬고 나도 준비됬어 
      // 너 내가 준비한거 가지고 추가적으로 초기화할일 있으면 지금 초기화 해! 라고하면서 init를 호출한다.

      // 생성자에서 getServletContext()를 호출하면 오류 발생!
      // 왜 ? 아직 ServletContext 객체가 준비되지 않았기 떄문이다.
      // 그래서 생성자 다음에 호출되는 init() 에서 getServletContext()를 호출해야한다.


      // 서블릿을 초기화할일 있으면 init에 넣어라. 
      // 서블릿에 대한 공통 도구들이 있지만 그 중에 일부 도구들은 서블릿 객체가 생성된 이후 
      // init가 호출되기 전에 그 사이에 준비되기 때문이다. 즉 서블릿 객채가 생성된 이후 
      // 준비되는 도구가 있기 떄문이다. 
      // 생성자가 호출된 이후에 도구가 생성되니까 그 이후에 사용하면되는데 그 시점이 init가 생성되는 시점이다. 
      // 도구에 있을때는 init를 사용 해야되고, 도구가 없으면 그냥 일반 생성자를 사용한다.
      //
      ServletContext ctx = this.getServletContext();

      System.out.println(ctx); // org.apache.catalina.core.ApplicationContextFacade@58015e56 

      ctx.setAttribute("boardDao",new MariaDBBoardDao(con));

      System.out.println();
      ctx.setAttribute("memberDao",new MariaDBMemberDao(con));
    }catch (Exception e) {
      throw new ServletException(e);
    }
  }
  // 이 서블릿의 역할은 다른 서블릿이 사용할 자원을 준비하는 것이기 때문에 굳이
  // 요청을 처리하는 메서드를 정의할 필요가 없다.  
}


