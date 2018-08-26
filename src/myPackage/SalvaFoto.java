package myPackage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/salvaFoto2")
public class SalvaFoto extends HttpServlet {

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
    		throws ServletException, IOException {
	
    	//pessoa.setNome(request.getParameter("foto"));   
    	//pessoa.setAltura(Double.valueOf(request.getParameter("altura")));
    	
	}
	
}
