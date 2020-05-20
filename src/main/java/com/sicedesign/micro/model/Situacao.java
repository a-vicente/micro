package com.sicedesign.micro.model;

public enum Situacao {

	ENCONTREI("Encontrei", "Detalhes"),
	PERDI("Perdi","Detalhes");
	
	private String descricao;
	private String documento;
	
	Situacao(String descricao, String documento){
		this.descricao = descricao;
		this.documento = documento;
	}

	public String getDescricao() {
		return descricao;
	}

	public String getDocumento() {
		return documento;
	}
	
	
	
	
}
