<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title></title>
  </head>
  <body>
  <s:i18n name="globalMessages">
  	<s:text name="check"></s:text>:
  	<a href="login.action?request_locale=zh_CN"><s:text name="chinese"></s:text></a>  
	<a href="login.action?request_locale=en_US"><s:text name="english"></s:text></a>  
	<br/>
	<h3><s:text name="title"></s:text></h3>
	<s:form action="login" method="post">
			<table width="344" height="300">
				<tr>
					<td> </td>
				</tr>
				<tr>
					<td><s:text name="username" />
					<td><s:textfield name="name" />
					</td>
				</tr>
				<tr>
					<td><s:text name="password" />
					</td>
					<td><s:password name="password" />
					</td>
				</tr>
				<tr>
					<td> </td>
					<td><s:submit value="%{getText('login')}" /></td>
				</tr>
			</table>
		</s:form>
	</s:i18n>
  </body>
</html>
