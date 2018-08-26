<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<img src="imagens/logomarca.jpg" /> Nome da empresa
<c:url value="/imagens/teste.png" var="imagem"/>
<img src="${imagem}"/>
<hr />