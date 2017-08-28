<%@page import="javax.sound.midi.SysexMessage"%>
<%@page import="com.yolowa.model.CustomerDTO"%>
<%@page import="com.yolowa.model.CustomerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String c_id=request.getParameter("c_id");
String c_password=request.getParameter("c_password");
CustomerDAO customer_dao=new CustomerDAO();
CustomerDTO customer_dto=customer_dao.selectByC_idpass(c_id, c_password);
String msg = "로그인 완료";
if(customer_dto==null){
	msg="가입된 회원이 아닙니다.";
	
}
%>

<h2> <%=msg %></h2>
</body>
</html>