package com.comartnet.comart.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.comartnet.comart.model.Producto;
import com.comartnet.comart.repository.IProductoRepository;
import com.comartnet.comart.repositoryService.IProductoService;

@Service
public class ProductoService implements IProductoService{

	@Autowired
	private IProductoRepository data;
	
	@Override
	public List<Producto> listar() {
		return (List<Producto>) data.findAll();
	}

	@Override
	public Optional<Producto> listarId(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int guardar(Producto p) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void eliminar(int id) {
		// TODO Auto-generated method stub
		
	}
}
