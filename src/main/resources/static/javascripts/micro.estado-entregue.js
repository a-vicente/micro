$(function(){
	
	$('[rel="tooltip"]').tooltip();
			
	$('.js-actualizar-estado-entregue').on('click', function(event){
		event.preventDefault();
		
		var botaoEntregue = $(event.currentTarget);
		var urlEntregue = botaoEntregue.attr('href');
		
		var response = $.ajax({
			url: urlEntregue,
			type: 'PUT'
		});
		
		response.done(function(e){
			var codigoEntregue = botaoEntregue.data('codigo');
			$('[data-role='+codigoEntregue+']').html('<span class="label label-success">'+e+'</span>');
			botaoEntregue.hide();
		});
		
		response.fail(function(e){
			console.log(e);
			alert('Erro ao entregar');
		});
		
	});
});
