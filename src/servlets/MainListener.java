package servlets;

import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;


import beans.PedidoDetDTO;

/**
 * Application Lifecycle Listener implementation class MainListener
 *
 */
@WebListener
public class MainListener implements HttpSessionListener {

    /**
     * Default constructor. 
     */
    public MainListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent arg0)  {
    	System.out.println("Creando la sesión");
        System.out.println("ID session ... : "+arg0.getSession().getId());
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
        System.out.println("Creando el ... : "+sdf.format(arg0.getSession().getCreationTime()));
        System.out.println("Intervalo  ... : "+arg0.getSession().getMaxInactiveInterval());
        
        ArrayList<PedidoDetDTO> carro = new ArrayList<PedidoDetDTO>();
        
        int cont = 0;
        int cant=0;
        double subTot=0.0;
        
        arg0.getSession().setAttribute("carro",carro);
        arg0.getSession().setAttribute("cant",cant);
        arg0.getSession().setAttribute("cont",cont);
        arg0.getSession().setAttribute("subTot",subTot);      
         
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent arg0)  {
    	System.out.println("Finalizando sesión");
        System.out.println("ID session ... : "+arg0.getSession().getId());
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
        System.out.println("Ultimo acceso ... : "+sdf.format(arg0.getSession().getLastAccessedTime()));
         
    }
	
}
