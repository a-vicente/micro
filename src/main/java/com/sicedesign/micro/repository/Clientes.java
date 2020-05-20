package com.sicedesign.micro.repository;

import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.sicedesign.micro.model.Cliente;
import com.sicedesign.micro.repository.helper.cliente.ClientesQueries;

@Repository
public interface Clientes extends JpaRepository<Cliente, Long>, ClientesQueries {
	
	@Query("select d from Cliente d where lower(d.nome) like %?1% order by d.nome")
	Page<Cliente> findByNome(String nome, Pageable pageable);
	
	public Optional<Cliente> findByEmail(String email);
	
	public Optional<Cliente> findByNuit(String nuit);
		
	public Optional<Cliente> findByNumeroDocumento(String numeroDocumento);

}
