$(function(){
	
	$('[rel="tooltip"]').tooltip();
			
	$('.js-actualizar-estado-encontrado').on('click', function(event){
		event.preventDefault();
		
		var botaoEncontrado = $(event.currentTarget);

		var urlEncontrado = botaoEncontrado.attr('href');
		
		var response = $.ajax({
			url: urlEncontrado,
			type: 'PUT'
		});
		
		response.done(function(e){
			var codigoEncontrado = botaoEncontrado.data('codigo');
			$('[data-role='+codigoEncontrado+']').html('<span class="label label-warning">'+e+'</span>');
			botaoEncontrado.hide();

		});
		
		response.fail(function(e){
			console.log(e);
			alert('Erro encontrado', +e);
		});
		
	});
});
