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
		return data.findById(id);
	}

	@Override
	public int guardar(Producto p) {
		int res = 0;
		Producto prod = data.save(p);
		
		if(!prod.equals(null)) {
			res = 1;
		}
		return res;
	}

	@Override
	public void eliminar(int id) {
		// TODO Auto-generated method stub
		
	}
}
