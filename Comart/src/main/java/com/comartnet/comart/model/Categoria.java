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

	public int getCod_Categoria() {
		return cod_Categoria;
	}

	public void setCod_Categoria(int cod_Categoria) {
		this.cod_Categoria = cod_Categoria;
	}

	public String getNom_Categoria() {
		return nom_Categoria;
	}

	public void setNom_Categoria(String nom_Categoria) {
		this.nom_Categoria = nom_Categoria;
	}

	public Categoria() {
		super();
	}

	public Categoria(int cod_Categoria, String nom_Categoria) {
		super();
		this.cod_Categoria = cod_Categoria;
		this.nom_Categoria = nom_Categoria;
	}

	@Override
	public String toString() {
		return "Categoria [cod_Categoria=" + cod_Categoria + ", nom_Categoria=" + nom_Categoria + "]";
	}
}
