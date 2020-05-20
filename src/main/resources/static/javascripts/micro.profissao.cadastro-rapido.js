var Micro = Micro || {};

Micro.ProfissaoCadastroRapido = (function() {
	
	function ProfissaoCadastroRapido() {
		this.modal = $('#modal-cadastro-rapido-profissao');
		this.botaoSalvar = this.modal.find('.js-modal-cadastro-profissao-salvar-btn');
		this.form = this.modal.find('form');
		this.url = this.form.attr('action');
		this.inputNomeProfissao = $('#nomeProfissao');
		this.containerMensagemErro = $('.js-mensagem-cadastro-rapido-profissao');
	}
	
	ProfissaoCadastroRapido.prototype.iniciar = function() {
		this.form.on('submit', function(event) { event.preventDefault() });
		this.modal.on('shown.bs.modal', onModalShow.bind(this));
		this.modal.on('hide.bs.modal', onModalClose.bind(this))
		this.botaoSalvar.on('click', onBotaoSalvarClick.bind(this));
	}
	
	function onModalShow() {
		this.inputNomeProfissao.focus();
	}
	
	function onModalClose() {
		this.inputNomeProfissao.val('');
		this.containerMensagemErro.addClass('hidden');
		this.form.find('.form-group').removeClass('has-error');
	}
	
	function onBotaoSalvarClick() {
		var nomeProfissao = this.inputNomeProfissao.val().trim();
		$.ajax({
			url: this.url,
			method: 'POST',
			contentType: 'application/json',
			data: JSON.stringify({ nome: nomeProfissao }),
			error: onErroSalvandoProfissao.bind(this),
			success: onProfissaoSalvo.bind(this)
		});
	}
	
	function onErroSalvandoProfissao(obj) {
		var mensagemErro = obj.responseText;
		this.containerMensagemErro.removeClass('hidden');
		this.containerMensagemErro.html('<span>' + mensagemErro + '</span>');
		this.form.find('.form-group').addClass('has-error');
	}
	
	function onProfissaoSalvo(profissao) {
		var comboProfissao = $('#profissao');
		comboProfissao.append('<option value=' + profissao.codigo + '>' + profissao.nome + '</option>');
		comboProfissao.val(profissao.codigo);
		this.modal.modal('hide');
	}
	
	return ProfissaoCadastroRapido;
	
}());

$(function() {
	var profissaoCadastroRapido = new Micro.ProfissaoCadastroRapido();
	profissaoCadastroRapido.iniciar();
});