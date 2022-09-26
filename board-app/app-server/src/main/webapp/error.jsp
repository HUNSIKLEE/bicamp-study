
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" 
         contentType="text/html; charset=UTF-8" 
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bitcamp</title>
</head>
<body>
  <h1>실행오류!-JSP</h1>
 <%-- 
  <p>
  서버 실행 중 오류가 발생했습니다.<br>
  잠시 후에 다시 시도해 주세요.<br>
  계속 같은 오류 발생시, 관리자에게 문의하세유~(내선:888)
  </p>
  --%>
<pre>
<%
 Exception e = (Exception)request.getAttribute("exception"); 
if(e != null){
e.printStackTrace(new PrintWriter(out));
}
%>
  </pre>
  <br>
</body>
</html>