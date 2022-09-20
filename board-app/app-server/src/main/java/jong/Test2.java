package jong;
import static org.reflections.scanners.Scanners.TypesAnnotated;
import java.lang.reflect.Constructor;
import java.sql.Connection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.reflections.Reflections;

public class Test2 {
  public static void main(String[] args) throws Exception {


    String query = "no=1&title=aaaa&content=bbb";
    Reflections reflections = new Reflections("jong.sub");
    Map<String,Object> objMap = new HashMap<>();

    Set<Class<?>> classes = reflections.get(TypesAnnotated.with(JhWebServlet.class).asClass());
    for (Class<?> clazz : classes) {
      String objName =  clazz.getAnnotation(JhWebServlet.class).value();
      System.out.println(objName);
      Constructor<?> constructor = clazz.getConstructor(Connection.class);
      objMap.put(objName, constructor.newInstance());
    }


  }

}
