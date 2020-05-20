package com.sicedesign.micro.controller.converter;

import org.springframework.core.convert.converter.Converter;
import org.springframework.util.StringUtils;

import com.sicedesign.micro.model.Profissao;

public class ProfissaoConverter implements Converter<String, Profissao>{

	@Override
	public Profissao convert(String codigo) {
		if (!StringUtils.isEmpty(codigo)) {
			Profissao profissao = new Profissao();
			profissao.setCodigo(Long.valueOf(codigo));
			return profissao;
		}
		
		return null;
	}
}
