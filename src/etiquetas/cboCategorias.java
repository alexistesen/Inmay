package etiquetas;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import beans.CategoriaDTO;
import services.CategoriaService;


public class cboCategorias extends TagSupport {


	public int doStartTag() throws JspException {

		
		JspWriter out = pageContext.getOut();
		try {
			
			CategoriaService rs = new CategoriaService();
			ArrayList<CategoriaDTO> l = rs.listado();
			for(CategoriaDTO temp : l) {
				out.print("<option value='"+temp.getIdCategoria()+"'>"+temp.getNombreCat()+"</option>");
			}
			
			
		} catch (IOException e) {
			System.out.println("Error: " + e.getMessage());
		}
		return SKIP_BODY;
	}

}
