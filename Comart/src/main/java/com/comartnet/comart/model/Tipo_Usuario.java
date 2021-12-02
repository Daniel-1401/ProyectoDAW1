package com.comartnet.comart.model;
import javax.persistence.*;

@Entity
@Table(name = "Tipo_Usuarios")
public class Tipo_Usuario {
	@Id
	@Column(name = "cod_tipo")
	private int cod_tipo;
	
	@Column(name = "nom_Categoria")
	private String nom_Categoria;
}
