package com.sicedesign.micro.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sicedesign.micro.model.Profissao;
import com.sicedesign.micro.repository.helper.profissao.ProfissoesQueries;

@Repository
public interface Profissoes extends JpaRepository<Profissao, Long>, ProfissoesQueries{

	public Optional<Profissao> findByNomeIgnoreCase(String nome);

}
