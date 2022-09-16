package com.bitcamp.servlet.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target(value = ElementType.TYPE) // annotation을 붙일 수 있는 범위를 설정. 클래스 인터페이스 
@Retention(value=RetentionPolicy.RUNTIME) // anootation 값을 추출할 때를 지정. 언제? 실행중에 

// 다음 annotation은 HTTP 요청을 처리하는 객체에 대헤 경로를 설정할 때 사용한다 .
public @interface WebServlet {

  String value(); // annotation 속성을 설정 한다. 

}
