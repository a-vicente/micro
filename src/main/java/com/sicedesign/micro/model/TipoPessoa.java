package com.sicedesign.micro.model;

public enum TipoPessoa {

	FISICA("Física", "Profissão", "100.000.000"),
	JURIDICA("Jurídica","Nome Empresa", "400.000.000");
	
	private String descricao;
	private String documento;
	private String mascara;


	
	private TipoPessoa(String descricao, String documento, String mascara) {
		this.descricao = descricao;
		this.documento = documento;
		this.mascara = mascara;


	}
	
	public String getDescricao() {
		return descricao;
	}

	public String getDocumento() {
		return documento;
	}
	
	public String getMascara() {
		return mascara;
	}
	
	
}
