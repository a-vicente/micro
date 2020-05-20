package com.sicedesign.micro.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sicedesign.micro.model.Profissao;
import com.sicedesign.micro.repository.Profissoes;
import com.sicedesign.micro.service.exception.NomeProfissaoJaCadastradoException;

@Service
public class CadastroProfissaoService {

	@Autowired
	private Profissoes profissoes;
	
	@Transactional
	public Profissao salvar(Profissao profissao) {
		Optional<Profissao> estiloOptional = profissoes.findByNomeIgnoreCase(profissao.getNome());
		if (estiloOptional.isPresent()) {
			throw new NomeProfissaoJaCadastradoException("Nome da Profissão já cadastrado");
		}
		
		return profissoes.saveAndFlush(profissao);
	}
	
}
