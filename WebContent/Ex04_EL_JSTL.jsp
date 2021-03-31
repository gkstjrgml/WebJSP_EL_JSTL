<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
       String id = request.getParameter("ID");
       if(id.equals("hong")){
    %>
          <%=id %><img src="images/1.jpg" style="width: 100px; height: 100px">
    <%       
       }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h3>EL과 JSTL사용하기</h3>
   <!-- ${param.ID}  == request.getParameter("ID") -->
   <c:if test="${param.ID == 'hong' }">
      ${param.ID}<img src="images/1.jpg" style="width: 100px; height: 100px">
   </c:if><!-- if 조건절 -->
   
   <h3>JSTL if문</h3>
   <!-- http://localhost:8090/WebJSP_EL_JSTL/Ex04_EL_JSTL.jsp?ID=sangjin&age=25 가정하고-->
   <c:if test="${param.age > 20}" var="result">
      param.value : ${param.age}
   </c:if>
   if구문에 만들었던 var 변수값 출력 : ${result}<br> <!-- 출력 표현식 :  ${result} -->
   
</body>
</html>