package com.sicedesign.micro.controller.converter;

import org.springframework.core.convert.converter.Converter;
import org.springframework.util.StringUtils;

import com.sicedesign.micro.model.Provincia;


public class ProvinciaConverter implements Converter<String, Provincia>{

	@Override
	public Provincia convert(String codigo) {
		
		if(!StringUtils.isEmpty(codigo)) {
		Provincia provincia = new Provincia();
		provincia.setCodigo(Long.valueOf(codigo));
		return provincia;
		
	}

	return null;
}
}