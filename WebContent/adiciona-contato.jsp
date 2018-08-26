<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="data" %>

<html>
 <head>
        <link href="css/jquery.css" rel="stylesheet">
        <script src="js/jquery.js"></script>
        <script src="js/jquery-ui.js"></script>
    </head>
         <body>
             <h1>Adiciona Contatos</h1>
             <hr />
             <form action="adicionaContato.jsp">
                 Nome: <input type="text" name="nome" /><br />
                 E-mail: <input type="text" name="email" /><br />
                 Endereço: <input type="text" name="endereco" /><br />
                 Data Nascimento: <data:campoData id="dataNascimento" /><br />
                 
                   <!--    <input type="text" name="dataNascimento" /><br />-->
                 <input type="submit" value="Gravar" />
             </form>
         </body>
     </html>