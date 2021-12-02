package com.comartnet.comart.model;
import javax.persistence.*;

@Entity
@Table(name = "Usuarios")
public class Usuario {
	@Id
	@Column(name = "cod_Usuario")
	private String codUsuario;
	
	@Column(name = "nom_Usuario")
	private String nomUsuario;
	
	@Column(name = "ape_Usuario")
	private String apeUsuario;
	
	@Column(name = "cod_tipo")
	private int codTipo;
	
	@Column(name = "email")
	private String email;
	
	@Column(name = "clave")
	private String clave;
	
	@Column(name = "telefono")
	private String telefono;
	
	@Column(name = "fecha_reg")
	private String fechaRegistro;
	
	@Column(name = "fecha_nac")
	private String fechaNacimiento;
}
