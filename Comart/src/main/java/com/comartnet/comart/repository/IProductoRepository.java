package com.comartnet.comart.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.comartnet.comart.model.Producto;

@Repository
public interface IProductoRepository extends JpaRepository<Producto, Integer>{

}
