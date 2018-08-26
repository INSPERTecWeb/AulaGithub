<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:import url="cabecalho.jsp" />

   <jsp:useBean id="dao" class="myPackage.DAO"/>
<table border="1">
    <c:forEach var="pessoa" items="${dao.lista}" varStatus="id">
        <tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff' }" >
             <td>${id.count}</td><td>${pessoa.nome}</td>
            <td>
<c:choose> 
    <c:when test="${not empty pessoa.altura}">
        <a href="mailto:${pessoa.altura}">${pessoa.altura}</a>
    </c:when>
    <c:otherwise>
        E-mail não informado
    </c:otherwise>
</c:choose>
			</td>
			<td>
			<fmt:formatDate value="${pessoa.nascimento.time}"
         pattern="dd/MM/yyyy" />
         	</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>