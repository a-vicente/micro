package com.sicedesign.micro.model;

public enum BancoNome {
	
	
	   /*Descricao | Conta | NIB*/
	ABSA("Absa", "0000-00000", "0008-0000-00000000000-00"),
	BCI("BCI - Banco Comercial de Investimentos","0000-00000", "0008-0000-00000000000-00"),
	BIM("BIM - Millennium Bim", "0000-00000", "0001-0000-00000000000-00"),
	ABC("BancABC", "0000-00000", "0008-0000-00000000000-00"),
	OPORTUNIDADE("Banco Oportunidade", "0000-00000", "0001-0000-00000000000-00"),
	MAIS("Banco Mais", "0000-00000", "0001-0000-00000000000-00"),
	Terra("Banco Terra", "0000-00000", "0003-0000-00000000000-00"),
	UNICO("Banco Único", "0000-00000", "0003-0000-00000000000-00"),
	CAPITALBANK("Capital Bank", "0000-00000", "0008-0000-00000000000-00"),
	ECOBANK("ECOBANK", "0000-00000", "100.000.000"),
	FNB("FNB - First National Bank", "0000-00000", "0001-0000-00000000000-00"),
	MOZA("MOZA Banco", "0000-00000", "0001-0000-00000000000-00"),
	STDB("Standard Bank", "0000-00000", "0003-0000-00000000000-00"),
	UBA("UBA", "0000-00000", "0003-0000-00000000000-00"),
;
	
	private String descricao;
	private String documento;
	private String mascara;


	
	private BancoNome(String descricao, String documento, String mascara) {
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
