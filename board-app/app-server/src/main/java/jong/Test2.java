package jong;
import static org.reflections.scanners.Scanners.TypesAnnotated;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Parameter;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URLDecoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.reflections.Reflections;
import com.bitcamp.board.dao.BoardDao;
import com.bitcamp.board.dao.MariaDBBoardDao;
import com.bitcamp.board.dao.MariaDBMemberDao;
import com.bitcamp.board.dao.MemberDao;
import com.bitcamp.board.handler.ErrorHandler;
import com.bitcamp.servlet.Servlet;
import com.sun.net.httpserver.HttpExchange;
import com.sun.net.httpserver.HttpHandler;
import com.sun.net.httpserver.HttpServer;

public class Test2 {
  public static void main(String[] args) throws Exception {


    String query = "no=1&title=aaaa&content=bbb";

    Map<String,String> paramMap = new HashMap<>();


    if (query != null && query.length() > 0) { // 예) no=1&title=aaaa&content=bbb
      String[] entries = query.split("&");
      //System.out.println(entries);//no=1,title=aaa,contet=bbbb;

      for (String entry : entries) { // 예) no=1
        String[] kv = entry.split("=");
        // 웹브라우저가 보낸 파라미터 값은 저장하기 전에 URL 디코딩 한다.
        paramMap.put(kv[0], URLDecoder.decode(kv[1], "UTF-8"));

        System.out.println(kv[0]);
      }
    }



  }

}
