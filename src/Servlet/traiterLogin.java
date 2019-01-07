package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/Login")
public class traiterLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	
    public traiterLogin() {
        super();

    }



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String identifiant = (String) request.getParameter("login");
		String motDePasse = (String) request.getParameter("mdp");
		
		if (identifiant.equals("Erwan") && motDePasse.equals("1234") || (identifiant.equals("Lahoussine") && motDePasse.equals("4321")) ) {
			HttpSession session = request.getSession(true);
			session.setAttribute("utilisateur", identifiant);
			request.getServletContext().getRequestDispatcher("/WEB-INF/Web/index.jsp").forward(request, response);
			System.out.println("Connexion réussie, bonjour : " + identifiant);
		} else {
			request.getServletContext().getRequestDispatcher("/WEB-INF/Web/erreur.jsp").forward(request, response);
			System.out.println("Connexion impossible");
		}
		
	}

}
