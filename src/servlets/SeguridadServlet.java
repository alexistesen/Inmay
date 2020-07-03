package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.UsuarioDTO;
import services.UsuarioService;

/**
 * Servlet implementation class SeguridadServlet
 */
@WebServlet(name = "validation", urlPatterns = { "/validation" })
public class SeguridadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeguridadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String opcion = "login";
		if(request.getParameterMap().containsKey("opcion")) {
			opcion = request.getParameter("opcion");
		}
		
		switch (opcion) {
			case "login": login(request, response); break;
			case "logout": logout(request, response); break;
			case "loginPub": loginPub(request,response);break;
			default: request.getRequestDispatcher("Login.jsp").forward(request, response);
				
		}
	}
	
	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email;
		String clave;
		String mensaje;
		String url;
		
		System.out.println("Entró al Servlet de login");
		
		email = request.getParameter("txtEmail");
		clave = request.getParameter("txtClave");
		
		UsuarioService u = new UsuarioService();
		
		UsuarioDTO usuario = u.validar(email, clave);
		HttpSession session = request.getSession(true);
		
		if(usuario!=null) {
			mensaje="bienvenido";
			session.setAttribute("usuario", usuario);
			url="/admin/inicio";
		} else {
			mensaje="Ingresa nuevamente por favor!";
			url="Login.jsp";
		}
		
		request.setAttribute("mensaje", mensaje);
		request.getRequestDispatcher(url).forward(request, response);
	}
	
	protected void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("usuario", null);
		request.getRequestDispatcher("Login.jsp").forward(request, response);
	}
	
	protected void loginPub(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email;
		String clave;
		String mensaje;
		String mensaje2="";
		String url;
		
		System.out.println("Entró al Servlet de publica");
		
		email = request.getParameter("txtEmail");
		clave = request.getParameter("txtClave");
		
		UsuarioService u = new UsuarioService();
		
		UsuarioDTO usuario = u.validar(email, clave);
		HttpSession session = request.getSession(true);
		
		if(usuario!=null) {
			mensaje="bienvenido";
			session.setAttribute("usuario", usuario);
			url="Publica.jsp";
		} else {
			mensaje="Ingresa nuevamente Porfavor!";
			url="LogueoCliente.jsp";
		}
		System.out.println(mensaje2);
		request.setAttribute("mensaje", mensaje);
		request.getRequestDispatcher(url).forward(request, response);
	}

}
