package com.sicedesign.micro.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sicedesign.micro.model.Distrito;
import com.sicedesign.micro.model.Provincia;


@Repository
public interface Distritos extends JpaRepository<Distrito, Long> {

public List<Distrito> findByProvinciaCodigo(Long codigoProvincia);
	
	public Optional<Distrito> findByNomeAndProvincia(String nome, Provincia provincia);
}
