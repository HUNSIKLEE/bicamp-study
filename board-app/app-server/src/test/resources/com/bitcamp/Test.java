package com.bitcamp;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;

public class Test {
  public static void main(String[] args) throws UnsupportedEncodingException {
    String query = "no=1&title=aaaa&content=bbb";
    //   System.out.println(query);

    Map<String,String> paramMap = new HashMap<>();
    //  System.out.println(paramMap);

    if (query != null && query.length() > 0) { // 예) no=1&title=aaaa&content=bbb
      //   System.out.println(query != null);
      //   System.out.println(query.length() > 0);
      //  System.out.println(query != null && query.length() > 0);

      String[] entries = query.split("&");// no=1 , title=aaaa ,content=bbb



      for (String entry : entries) { // 예) no=1
        // System.out.println(entries);// no=1,  title=aaaa,content=bbb
        //System.out.println(String.join("_", entries));

        //  System.out.println(entry); // no=1
        String[] kv = entry.split("=");
        // System.out.println(kv);// no,1 title,aaaa,content,bbb
        //      System.out.println(String.join("_", kv));
        // 웹브라우저가 보낸 파라미터 값은 저장하기 전에 URL 디코딩 한다.
        paramMap.put(kv[0], URLDecoder.decode(kv[1], "UTF-8"));

        System.out.println(URLDecoder.decode(kv[1], "UTF-8"));//no
        System.out.println(kv[1]);//1
        //System.out.println(kv[0]); //no title content
        // System.out.println(paramMap); //no ,1 ,title,aaaa,content,bbb
      }
    }
  }
}
