package jong;

import static org.reflections.scanners.Scanners.TypesAnnotated;
import java.util.Set;
import org.reflections.Reflections;
import org.reflections.Store;
import org.reflections.util.QueryFunction;
import com.bitcamp.servlet.annotation.WebServlet;

public class Test {
  public static void main(String[] args) {
    // jong.sub 패키지 밑에 있는 클래스들을 가져온다.
    Reflections reflections = new Reflections("jong.sub");
    System.out.println(reflections);   // jong.sub 안에 포함됨 클래스들의 주소를 reflections에 넘겨준다.



    QueryFunction<Store,String> 검색필터1 = TypesAnnotated.with(WebServlet.class);
    System.out.println( 검색필터1);

    // 2) 찾은 클래스 이름을 가지고 클래스를 Method Area 영역에 로딩하여
    //    Class 객체 목록을 리턴하라!
    QueryFunction<Store,Class<?>> 검색필터2  = 검색필터1.asClass();

    // 3) 위의 두 검색 조건으로 클래스를 찾는다.

    Set<Class<?>> 서블릿클래스들 = reflections.get(검색필터2);

    // JhWebServlet annotation 붙어 있는 클래스들을 Servlets 안에 넣는다.
    //Set<Class<?>> servlets = reflections.get(TypesAnnotated.with(JhWebServlet.class).asClass());


    //for(Class<?> servlet : servlets) { // servlets를 하나씩 반복한다. // servlet은하나씩 들어가는 값이 
    //  String servletPath = servlet.getAnnotation(JhWebServlet.class).value(); // annotation 붙은 클래스의 value 값을 넣는


    // 생성자의 파라미터의 타입을 알아내, 해당 객체를 주입한다.
    //  Constructor<?> constructor = servlet.getConstructors()[0]; // servlet 은 A 설계도야. A 설계에서 constructor(생성자)를 가져
    //  Parameter[] params = constructor.getParameters();
    //  if(params.length == 0) { // 생성자의 파라미터가 없다면
    // servletMap.put(servletPath, (Servlet)constructor.newInstance());
    // }
    //}

  }
}
