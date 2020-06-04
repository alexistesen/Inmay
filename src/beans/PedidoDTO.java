package beans;

public class PedidoDTO {

	private int idPedido,idCliente;
	private String fPedido,fEntrega;
	private int estadoP;
	private String destinatario,direccionD;
	private int idPais, idCiudad, idProvincia, idDistrito;
	
	public int getIdPedido() {
		return idPedido;
	}
	public void setIdPedido(int idPedido) {
		this.idPedido = idPedido;
	}
	public int getIdCliente() {
		return idCliente;
	}
	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}
	public String getfPedido() {
		return fPedido;
	}
	public void setfPedido(String fPedido) {
		this.fPedido = fPedido;
	}
	public String getfEntrega() {
		return fEntrega;
	}
	public void setfEntrega(String fEntrega) {
		this.fEntrega = fEntrega;
	}
	public int getEstadoP() {
		return estadoP;
	}
	public void setEstadoP(int estadoP) {
		this.estadoP = estadoP;
	}
	public String getDestinatario() {
		return destinatario;
	}
	public void setDestinatario(String destinatario) {
		this.destinatario = destinatario;
	}
	public String getDireccionD() {
		return direccionD;
	}
	public void setDireccionD(String direccionD) {
		this.direccionD = direccionD;
	}
	public int getIdPais() {
		return idPais;
	}
	public void setIdPais(int idPais) {
		this.idPais = idPais;
	}
	public int getIdCiudad() {
		return idCiudad;
	}
	public void setIdCiudad(int idCiudad) {
		this.idCiudad = idCiudad;
	}
	public int getIdProvincia() {
		return idProvincia;
	}
	public void setIdProvincia(int idProvincia) {
		this.idProvincia = idProvincia;
	}
	public int getIdDistrito() {
		return idDistrito;
	}
	public void setIdDistrito(int idDistrito) {
		this.idDistrito = idDistrito;
	}
	
	
}
