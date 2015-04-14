$(window).scroll ->
  if $(window).scrollTop() >= 50
    $('.return-to-top').show()
  else
    $('.return-to-top').hide()
  if $(window).scrollTop() >= $(document).height() - $(window).height()
    $('#page').trigger 'click'
  return
ready = ->
	$('#click-to-return').click ->
	  $(window).scrollTop 0
	  $('.return-to-top').hide()
	  return
	return

$(document).ready(ready)
$(document).on('page:load', ready)
