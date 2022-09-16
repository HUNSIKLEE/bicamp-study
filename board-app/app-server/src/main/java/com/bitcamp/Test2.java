package com.bitcamp;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

public class Test2 {
  public static void main(String[] args) throws UnsupportedEncodingException {
    System.out.println(URLEncoder.encode("b=&", "UTF-8"));

    System.out.println(URLDecoder.decode("b%3D%26", "UTF-8"));
  }
}
