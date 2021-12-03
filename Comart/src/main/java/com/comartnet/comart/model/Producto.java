package com.comartnet.comart.model;

import javax.persistence.*;

@Entity
@Table(name = "Productos")
public class Producto {
	@Id
	@Column(name = "Id_Producto")
	private int Id_Producto;
	
	@Column(name = "Nom_Producto")
	private String Nom_Producto;
	
	@Column(name = "Des_Producto")
	private String Des_Producto;
	
	@Column(name = "PrecioUnidad")
	private double PrecioUnidad;
	
	@Column(name = "Stock_Producto")
	private int Stock_Producto;
	
	@Column(name = "UnidadesEnPedido")
	private int UnidadesEnPedido;
	
	@Column(name = "imagen")
	private String imagen;
	
	@Column(name = "cod_Categoria")
	private int cod_Categoria;

	public int getId_Producto() {
		return Id_Producto;
	}

	public void setId_Producto(int id_Producto) {
		Id_Producto = id_Producto;
	}

	public String getNom_Producto() {
		return Nom_Producto;
	}

	public void setNom_Producto(String nom_Producto) {
		Nom_Producto = nom_Producto;
	}

	public String getDes_Producto() {
		return Des_Producto;
	}

	public void setDes_Producto(String des_Producto) {
		Des_Producto = des_Producto;
	}

	public double getPrecioUnidad() {
		return PrecioUnidad;
	}

	public void setPrecioUnidad(double precioUnidad) {
		PrecioUnidad = precioUnidad;
	}

	public int getStock_Producto() {
		return Stock_Producto;
	}

	public void setStock_Producto(int stock_Producto) {
		Stock_Producto = stock_Producto;
	}

	public int getUnidadesEnPedido() {
		return UnidadesEnPedido;
	}

	public void setUnidadesEnPedido(int unidadesEnPedido) {
		UnidadesEnPedido = unidadesEnPedido;
	}

	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	public int getCod_Categoria() {
		return cod_Categoria;
	}

	public void setCod_Categoria(int cod_Categoria) {
		this.cod_Categoria = cod_Categoria;
	}

	@Override
	public String toString() {
		return "Producto [Id_Producto=" + Id_Producto + ", Nom_Producto=" + Nom_Producto + ", Des_Producto="
				+ Des_Producto + ", PrecioUnidad=" + PrecioUnidad + ", Stock_Producto=" + Stock_Producto
				+ ", UnidadesEnPedido=" + UnidadesEnPedido + ", imagen=" + imagen + ", cod_Categoria=" + cod_Categoria
				+ "]";
	}
	
	
	
}
