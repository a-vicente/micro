package com.sicedesign.micro.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sicedesign.micro.model.Nacionalidade;
import com.sicedesign.micro.repository.Nacionalidades;
import com.sicedesign.micro.service.exception.NomeNacionalidadeJaCadastradoException;

@Service
public class CadastroNacionalidadeService {

	@Autowired
	private Nacionalidades nacionalidades;
	
	@Transactional
	public Nacionalidade salvar(Nacionalidade nacionalidade) {
		Optional<Nacionalidade> estiloOptional = nacionalidades.findByNomeIgnoreCase(nacionalidade.getNome());
		if (estiloOptional.isPresent()) {
			throw new NomeNacionalidadeJaCadastradoException("Nome da Nacionalidade já cadastrado");
		}
		
		return nacionalidades.saveAndFlush(nacionalidade);
	}
	
}
