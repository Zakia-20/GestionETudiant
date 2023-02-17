<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.List"%>
<%@page import="com.app1.classes.Etudiant"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
  <link rel="stylesheet" 
  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
  integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
  crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<table class="table">
  <thead>
    <tr>
      <th scope="col">Nom</th>
      <th scope="col">Prenom</th>
      <th scope="col">Moyenne</th>
      <th scope="col">Mention</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="item" items="${requestScope.etudiantList }">
    <tr>
      <td>${item.nom }</td>
      <td>${item.prenom }</td>
      <td>${item.moyenne }</td>
      <c:if test="${item.moyenne>=16 }">
      	<td><FONT COLOR="#11ff00">Très bien</FONT> </td>
      </c:if>
      <c:if test="${item.moyenne<16 && item.moyenne>=14}">
      	<td ><FONT COLOR="#b2ff47">Bien</FONT> </td>
      </c:if>
      <c:if test="${item.moyenne<14 && item.moyenne>=12}">
      	<td ><FONT COLOR="#FFFF99">A.Bien</FONT> </td>
      </c:if>
      <c:if test="${item.moyenne<12 && item.moyenne>=10}">
      	<td ><FONT COLOR="#ffe750">A.Bien</FONT> </td>
      </c:if>
      <c:if test="${item.moyenne<10 }">
      	<td ><FONT COLOR="#ff0000">Ajournée</FONT></td>
      </c:if>
    </tr>
    </c:forEach>

  </tbody>
</table>


</body>
</html>

