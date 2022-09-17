package jong;
import static org.reflections.scanners.Scanners.TypesAnnotated;
import java.lang.reflect.Constructor;
import java.lang.reflect.Parameter;
import java.util.Set;
import org.reflections.Reflections;
import org.reflections.Store;
import org.reflections.util.QueryFunction;
import com.bitcamp.servlet.annotation.WebServlet;

public class Test2 {
  public static void main(String[] args) {

    Reflections reflections = new Reflections("jong.sub");

    Set<Class<?>> servlets = reflections.get(TypesAnnotated.with(JhWebServlet.class).asClass());
    //System.out.println(servlets); // annotation 붙은 클래스들 가져와서 servlets에 넣어라.
    for(Class<?> servlet : servlets) {
      // 서블릿 클래스의 붙은 WebServlet 애노테이션으로부터 path를 꺼낸다.
      String servletPath = servlet.getAnnotation(JhWebServlet.class).value();

      //System.out.println(servletPath);// anonotation 붙은 클래스들의 벨류값들의 주소를  servletPath에 넣는다. 
      //결과값은 벨류값 i am aclass ,  b class
      Constructor<?> constructor = servlet.getConstructors()[0];
      Parameter[] params = constructor.getParameters();

      System.out.println(constructor);//

      //    
      //    for (Class<?> servlet : servlets) {
      //      System.out.println(servlets);//
      //      WebServlet anno = servlet.getAnnotation(WebServlet.class);
      //      System.out.printf("%s ---> %s\n", anno.value(), servlet.getName());
      //    }
      //  }

    }
  }


}

