package com.comartnet.comart.model;

import javax.persistence.*;

@Entity
@Table(name = "Categoria")
public class Categoria {
	@Id
	@Column(name = "cod_Categoria")
	private int cod_Categoria;
	
	@Column(name = "nom_Categoria")
	private String nom_Categoria;
}
