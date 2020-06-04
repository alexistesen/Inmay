package etiquetas;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import beans.RolDTO;
import services.RolService;

public class cboRol extends TagSupport {


	public int doStartTag() throws JspException {

		
		JspWriter out = pageContext.getOut();
		try {
			
			RolService rs = new RolService();
			ArrayList<RolDTO> l = rs.listado();
			for(RolDTO temp : l) {
				out.print("<option value='"+temp.getIdRol()+"'>"+temp.getDescripcionRol()+"</option>");
			}
			
			
		} catch (IOException e) {
			System.out.println("Error: " + e.getMessage());
		}
		return SKIP_BODY;
	}

}
