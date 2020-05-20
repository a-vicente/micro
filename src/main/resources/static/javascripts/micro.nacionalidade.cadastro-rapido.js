var Micro = Micro || {};

Micro.NacionalidadeCadastroRapido = (function() {
	
	function NacionalidadeCadastroRapido() {
		this.modal = $('#modal-cadastro-rapido-nacionalidade');
		this.botaoSalvar = this.modal.find('.js-modal-cadastro-nacionalidade-salvar-btn');
		this.form = this.modal.find('form');
		this.url = this.form.attr('action');
		this.inputNomeNacionalidade = $('#nomeNacionalidade');
		this.containerMensagemErro = $('.js-mensagem-cadastro-rapido-nacionalidade');
	}
	
	NacionalidadeCadastroRapido.prototype.iniciar = function() {
		this.form.on('submit', function(event) { event.preventDefault() });
		this.modal.on('shown.bs.modal', onModalShow.bind(this));
		this.modal.on('hide.bs.modal', onModalClose.bind(this))
		this.botaoSalvar.on('click', onBotaoSalvarClick.bind(this));
	}
	
	function onModalShow() {
		this.inputNomeNacionalidade.focus();
	}
	
	function onModalClose() {
		this.inputNomeNacionalidade.val('');
		this.containerMensagemErro.addClass('hidden');
		this.form.find('.form-group').removeClass('has-error');
	}
	
	function onBotaoSalvarClick() {
		var nomeNacionalidade = this.inputNomeNacionalidade.val().trim();
		$.ajax({
			url: this.url,
			method: 'POST',
			contentType: 'application/json',
			data: JSON.stringify({ nome: nomeNacionalidade }),
			error: onErroSalvandoNacionalidade.bind(this),
			success: onNacionalidadeSalvo.bind(this)
		});
	}
	
	function onErroSalvandoNacionalidade(obj) {
		var mensagemErro = obj.responseText;
		this.containerMensagemErro.removeClass('hidden');
		this.containerMensagemErro.html('<span>' + mensagemErro + '</span>');
		this.form.find('.form-group').addClass('has-error');
	}
	
	function onNacionalidadeSalvo(nacionalidade) {
		var comboNacionalidade = $('#nacionalidade');
		comboNacionalidade.append('<option value=' + nacionalidade.codigo + '>' + nacionalidade.nome + '</option>');
		comboNacionalidade.val(nacionalidade.codigo);
		this.modal.modal('hide');
	}
	
	return NacionalidadeCadastroRapido;
	
}());

$(function() {
	var nacionalidadeCadastroRapido = new Micro.NacionalidadeCadastroRapido();
	nacionalidadeCadastroRapido.iniciar();
});