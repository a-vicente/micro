package com.sicedesign.micro.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sicedesign.micro.model.Nacionalidade;
import com.sicedesign.micro.repository.helper.nacionalidade.NacionalidadesQueries;

@Repository
public interface Nacionalidades  extends JpaRepository<Nacionalidade, Long>, NacionalidadesQueries{

	public Optional<Nacionalidade> findByNomeIgnoreCase(String nome);
}
