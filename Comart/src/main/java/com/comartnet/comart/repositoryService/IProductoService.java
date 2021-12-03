package com.comartnet.comart.repositoryService;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import com.comartnet.comart.model.Producto;

public interface IProductoService {

	@Autowired
	public List<Producto> listar();
	
	public Optional<Producto>listarId(int id);
	public int guardar(Producto p);
	public void eliminar(int id);
}
