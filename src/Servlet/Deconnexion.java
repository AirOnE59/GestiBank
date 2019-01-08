package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/fin")
public class Deconnexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


    public Deconnexion() {
        super();

    }



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		System.out.println("Session deconnéctée");
		session.removeAttribute("utilisateur");
		request.getServletContext().getRequestDispatcher("/WEB-INF/Web/end.jsp").forward(request, response);
		System.out.println("redirigé vers end.jsp");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	}

}
