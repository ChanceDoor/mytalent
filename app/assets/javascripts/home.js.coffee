# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $('#search').bind 'keydown', (e) ->  
    $('#search-btn').click() if e.keyCode == 13 
