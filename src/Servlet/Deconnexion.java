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
		String user = (String) session.getAttribute("utilisateur");
		request.setAttribute("utilisateur", user);
		if (user !=null) {
			request.getServletContext().getRequestDispatcher("/WEB-INF/Web/end.jsp").forward(request, response);
			System.out.println("Session deconnéctée");
			session.removeAttribute("utilisateur");
			System.out.println("redirigé vers end.jsp");
		} else {
			request.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
			System.out.println("redirigé vers login.jsp");
	} 
		
	}




	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	}

}
