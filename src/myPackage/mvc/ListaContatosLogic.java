package myPackage.mvc;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myPackage.DAO;
import myPackage.Pessoas;

public class ListaContatosLogic implements Logica {
    public String executa(HttpServletRequest req, HttpServletResponse res)
    		   throws Exception {
    	// Monta a lista de contatos
    	List<Pessoas> pessoas = new DAO().getLista();
    	// Guarda a lista no request
    	req.setAttribute("pessoas", pessoas);
    	return "/WEB-INF/jsp/lista-contatos3.jsp";
    }
}
