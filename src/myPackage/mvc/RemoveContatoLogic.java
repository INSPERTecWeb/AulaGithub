package myPackage.mvc;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myPackage.DAO;



public class RemoveContatoLogic implements Logica {
    public String executa(HttpServletRequest req, HttpServletResponse res)
            throws Exception {
    	Integer id = Integer.parseInt(req.getParameter("id"));
        //Pessoas contato = new Pessoas();
        //contato.setId(id);
    	
    	Connection connection = (Connection) req
                .getAttribute("conexao");
        // passe a conexão no construtor
        
        DAO dao = new DAO(connection);
        
        
        dao.remove(id);
        System.out.println("Excluindo contato... ");
        return "mvc?logica=ListaContatosLogic";
} 
    }