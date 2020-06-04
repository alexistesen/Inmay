package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.PedidoDetDTO;
import beans.ProductoDTO;

/**
 * Servlet implementation class AgregarProdServlet
 */
@WebServlet(name = "agregar", urlPatterns = { "/agregar" })
public class AgregarProdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Agregar al carro de compras");
		int can = Integer.parseInt(request.getParameter("cantidad"));
		System.out.println(can);
		ProductoDTO p = (ProductoDTO) request.getSession().getAttribute("p");
		System.out.println(p.getIdProducto());
		ArrayList<PedidoDetDTO> carro = (ArrayList<PedidoDetDTO>) request.getSession().getAttribute("carro");
		int cant = (int) request.getSession().getAttribute("cant");
		double subTot = (double) request.getSession().getAttribute("subTot");
		int cont = (int)request.getSession().getAttribute("cont");
	
		double importe = can*p.getPrecioU();		
		
		subTot+= importe;
		cont ++;
		cant += can;
		
		PedidoDetDTO ped = new PedidoDetDTO();
		ped.setIdProducto(p.getIdProducto());
		ped.setStProducto(p.getDescProducto());
		ped.setCantidad(can);
		ped.setPrecioVen(p.getPrecioU());
		ped.setImporte(importe);
		ped.setIdPedidoDet(cont);
		carro.add(ped);
		
		
		
		
		request.setAttribute("mensaje", "Producto agregado");
		request.getSession().setAttribute("carro", carro);
		request.getSession().setAttribute("cant", cant);
		request.getSession().setAttribute("subTot", subTot);
		request.getSession().setAttribute("cont", cont);
		
		request.getRequestDispatcher("/Canasta.jsp").forward(request,response);
		
		
	}

}
