var Micro = Micro || {};

Micro.ComboProvincia = (function() {
	
	function ComboProvincia() {
		this.combo = $('#provincia');
		this.emitter = $({});
		this.on = this.emitter.on.bind(this.emitter);
	}
	
	ComboProvincia.prototype.iniciar = function() {
		this.combo.on('change', onProvinciaAlterado.bind(this));
	}
	
	function onProvinciaAlterado() {
		this.emitter.trigger('alterado', this.combo.val());
	}
	
	return ComboProvincia;
	
}());

Micro.ComboDistrito = (function() {
	
	function ComboDistrito(comboProvincia) {
		this.comboProvincia = comboProvincia;
		this.combo = $('#distrito');
		this.imgLoading = $('.js-img-loading');
		this.inputHiddenDistritoSelecionado = $('#inputHiddenDistritoSelecionado');
	}
	
	ComboDistrito.prototype.iniciar = function() {
		reset.call(this);
		this.comboProvincia.on('alterado', onProvinciaAlterado.bind(this));
		var codigoProvincia = this.comboProvincia.combo.val();
		inicializarDistritos.call(this, codigoProvincia);
	}
	
	function onProvinciaAlterado(evento, codigoProvincia) {
		this.inputHiddenDistritoSelecionado.val('');
		inicializarDistritos.call(this, codigoProvincia);
	}
	
	function inicializarDistritos(codigoProvincia) {
		if (codigoProvincia) {
			var resposta = $.ajax({
				url: this.combo.data('url'),
				method: 'GET',
				contentType: 'application/json',
				data: { 'provincia': codigoProvincia }, 
				beforeSend: iniciarRequisicao.bind(this),
				complete: finalizarRequisicao.bind(this)
			});
			resposta.done(onBuscarDistritosFinalizado.bind(this));
		} else {
			reset.call(this);
		}
	}
	
	function onBuscarDistritosFinalizado(distritos) {
		var options = [];
		distritos.forEach(function(distrito) {
			options.push('<option value="' + distrito.codigo + '">' + distrito.nome + '</option>');
		});
		
		this.combo.html(options.join(''));
		this.combo.removeAttr('disabled');
		
		var codigoDistritoSelecionado = this.inputHiddenDistritoSelecionado.val();
		if (codigoDistritoSelecionado) {
			this.combo.val(codigoDistritoSelecionado);
		}
	}
	
	function reset() {
		this.combo.html('<option value="">Selecione Distrito</option>');
		this.combo.val('');
		this.combo.attr('disabled', 'disabled');
	}
	
	function iniciarRequisicao() {
		reset.call(this);
		this.imgLoading.show();
	}
	
	function finalizarRequisicao() {
		this.imgLoading.hide();
	}
	
	return ComboDistrito;
	
}());

$(function() {
	
	var comboProvincia = new Micro.ComboProvincia();
	comboProvincia.iniciar();
	
	var comboDistrito = new Micro.ComboDistrito(comboProvincia);
	comboDistrito.iniciar();
	
});
