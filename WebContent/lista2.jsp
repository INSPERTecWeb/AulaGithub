<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de Pessoas</title>
</head>
<body>
<%@ page import="java.util.*,myPackage.*" %>
<table border='1'>       
<% DAO dao = new DAO();
   List<Pessoas> pessoas = dao.getLista();
   for (Pessoas pessoa : pessoas ) { %>
    <tr><td><%=pessoa.getNome()%></td>
        <td><%=pessoa.getNascimento().getTime()%></td>
        <td><%=pessoa.getAltura()%></td></tr>
<% } %>
</table>
</body>
</html>