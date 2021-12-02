package com.comartnet.comart.model;
import javax.persistence.*;

@Entity
@Table(name = "Usuario")
public class Usuario {
	@Id
	@Column(name = "cod_Usuario")
	private String cod_Usuario;
	
	@Column(name = "nom_Usuario")
	private String nom_Usuario;
	
	@Column(name = "ape_Usuario")
	private String ape_Usuario;
	
	@Column(name = "cod_tipo")
	private int cod_tipo;
	
	@Column(name = "email")
	private String email;
	
	@Column(name = "clave")
	private String clave;
	
	@Column(name = "telefono")
	private String telefono;
	
	@Column(name = "fecha_reg")
	private String fecha_reg;
	
	@Column(name = "fecha_nac")
	private String fecha_nac;
}
