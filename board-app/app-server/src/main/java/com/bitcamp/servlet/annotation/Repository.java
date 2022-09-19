package com.bitcamp.servlet.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target(value = ElementType.TYPE) // annotation을 붙일 수 있는 범위를 설정. 클래스 인터페이스 
@Retention(value=RetentionPolicy.RUNTIME) // anootation 값을 추출할 때를 지정. 언제? 실행중에 

// 다음 annotation은 DAO 객체를 표시 할 때 사용한다.
public @interface Repository {

  String value(); // annotation 속성을 설정 한다. 

}
