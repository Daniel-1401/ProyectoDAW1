package com.comartnet.comart.model;
import javax.persistence.*;

@Entity
@Table(name = "Tipo_Usuarios")
public class Tipo_Usuario {
	@Id
	@Column(name = "cod_TipoUsuario")
	private int cod_TipoUsuario;
	
	@Column(name = "nom_TipoUsuario")
	private String nom_TipoUsuario;
}
