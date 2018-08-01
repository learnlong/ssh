<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<%@ taglib prefix="s" uri="/struts-tags" %>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  

<html>  
  <head>  
    <base href="<%=basePath%>">      
    <title>My JSP 'i18nlogin.jsp' starting page</title>      
    <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache">  
    <meta http-equiv="expires" content="0">      
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
    <meta http-equiv="description" content="This is my page">   
  </head>  

  <body>  
  <s:i18n name="local.message">  
    <s:form action="/i18n.action" method="post">  
      <s:textfield name="user.userName" label="%{getText('login.name')}"/>  
      <s:password name="user.userPassword" label="%{getText('login.pass')}"/>  
      <s:submit value="%{getText('login.submit')}"></s:submit>  
       <a href="i18n.action?flag=1">英文</a>  
       <a href="i18n.action?flag=2">中文</a>  
    </s:form></s:i18n>  
  </body>  
</html> 