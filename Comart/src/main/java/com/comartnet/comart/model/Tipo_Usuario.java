package com.comartnet.comart.model;
import javax.persistence.*;

@Entity
@Table(name = "Tipo_Usuarios")
public class Tipo_Usuario {
	@Id
	@Column(name = "cod_tipo")
	private int codTipo;
	
	@Column(name = "nom_Categoria")
	private String nomCategoria;
}
