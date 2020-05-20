package com.sicedesign.micro.controller.converter;

import org.springframework.core.convert.converter.Converter;
import org.springframework.util.StringUtils;

import com.sicedesign.micro.model.Nacionalidade;

public class NacionalidadeConverter implements Converter<String, Nacionalidade>{

	@Override
	public Nacionalidade convert(String codigo) {
		if (!StringUtils.isEmpty(codigo)) {
			Nacionalidade nacionalidade = new Nacionalidade();
			nacionalidade.setCodigo(Long.valueOf(codigo));
			return nacionalidade;
		}
		
		return null;
	}
}
