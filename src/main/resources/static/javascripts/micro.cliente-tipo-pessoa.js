var Micro = Micro || {};

Micro.MascaraPessoaEmpresa = (function() {
	
	function MascaraPessoaEmpresa() {
		this.radioTipoPessoa = $('.js-radio-tipo-pessoa');
		this.labelPessoaEmpresa = $('[for=nomeEmpresaProfissao]');
		this.inputNuit = $('#nuit');
		this.inputPessoaEmpresa = $('#nomeEmpresaProfissao');

	}
	
	MascaraPessoaEmpresa.prototype.iniciar = function() {
		this.radioTipoPessoa.on('change', onTipoPessoaAlterado.bind(this));
	}
	
	function onTipoPessoaAlterado(evento) {
		var tipoPessoaSelecionada = $(evento.currentTarget);
		
		this.labelPessoaEmpresa.text(tipoPessoaSelecionada.data('documento'));
		this.inputNuit.mask(tipoPessoaSelecionada.data('mascara'));
		this.inputPessoaEmpresa.val('');
		this.inputNuit.val('');
		this.inputPessoaEmpresa.removeAttr('disabled');
	}
	
	return MascaraPessoaEmpresa;
	
}());

$(function() {
	var mascaraPessoaEmpresa = new Micro.MascaraPessoaEmpresa();
	mascaraPessoaEmpresa.iniciar();
});