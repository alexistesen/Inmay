package beans;

public class UsuarioDTO extends Persona {

	private int rol;
	private String desc_Rol;
	private int idEstado_U;
	private String desc_estadoU;
	private boolean is_staff;
	
	
	public int getRol() {
		return rol;
	}

	public void setRol(int rol) {
		this.rol = rol;
	}
	
	
	public String getDesc_Rol() {
		return desc_Rol;
	}

	public void setDesc_Rol(String desc_Rol) {
		this.desc_Rol = desc_Rol;
	}

	public int getIdEstado_U() {
		return idEstado_U;
	}

	public void setIdEstado_U(int idEstado_U) {
		this.idEstado_U = idEstado_U;
	}

	public String getDesc_estadoU() {
		return desc_estadoU;
	}

	public void setDesc_estadoU(String desc_estadoU) {
		this.desc_estadoU = desc_estadoU;
	}

	public boolean isIs_staff() {
		return is_staff;
	}

	public void setIs_staff(boolean is_staff) {
		this.is_staff = is_staff;
	}
	
	
	
}
