var Efinderi = Efinderi || {};

Efinderi.ContactoCadastroRapido = (function() {
	
	function ContactoCadastroRapido() {
		this.modal = $('#modal-cadastro-rapido-contacto');
		this.botaoSalvar = this.modal.find('.js-modal-cadastro-contacto-salvar-btn');
		this.form = this.modal.find('form');
		this.url = this.form.attr('action');
		this.inputNomeContacto = $('#contactoC');
		this.containerMensagemErro = $('.js-mensagem-cadastro-rapido-contacto');
	}
	
	ContactoCadastroRapido.prototype.iniciar = function() {
		this.form.on('submit', function(event) { event.preventDefault() });
		this.modal.on('shown.bs.modal', onModalShow.bind(this));
		this.modal.on('hide.bs.modal', onModalClose.bind(this))
		this.botaoSalvar.on('click', onBotaoSalvarClick.bind(this));
	}
	
	function onModalShow() {
		this.inputNomeContacto.focus();
	}
	
	function onModalClose() {
		this.inputNomeContacto.val('');
		this.containerMensagemErro.addClass('hidden');
		this.form.find('.form-group').removeClass('has-error');
	}
	
	function onBotaoSalvarClick() {
		var nomeContacto = this.inputNomeContacto.val().trim();
		$.ajax({
			url: this.url,
			method: 'PUT',
			/*contentType: 'application/json',*/
			data: JSON.stringify({ nome: nomeContacto }),
			error: onErroSalvandoContacto.bind(this),
			/*success: onContactoSalvo.bind(this)*/
		});
	}
	
	function onErroSalvandoContacto(obj) {
		var mensagemErro = obj.responseText;
		this.containerMensagemErro.removeClass('hidden');
		this.containerMensagemErro.html('<span>' + mensagemErro + '</span>');
		this.form.find('.form-group').addClass('has-error');
	}
	
	/*function onContactoSalvo(contacto) {
		var comboContacto = $('#contacto');
		comboContacto.append('<option value=' + contacto.codigo + '>' + contacto.nome + '</option>');
		comboContacto.val(contacto.codigo);
		this.modal.modal('hide');
	}*/
	
	return ContactoCadastroRapido;
	
}());

$(function() {
	var ContactoCadastroRapido = new Efinderi.ContactoCadastroRapido();
	ContactoCadastroRapido.iniciar();
});
