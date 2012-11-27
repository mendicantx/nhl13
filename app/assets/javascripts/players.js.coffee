# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready -> 
	options = { enableCellNavigation: true, enableColumnReorder: false, autoheight: true;}

	columns = [
		{id: 'name', name: 'Name', field: 'name'}
		{id: 'position', name: 'POS', field: 'position'}
		{id: 'overall', name: 'OVR', field: 'overall'}
	]



	$.ajax '/players.json',
		type: 'GET'
		dataType: 'json'
		success: (data, textStatus, jqXHR) ->
			grid = new Slick.Grid '#players_table', data, columns, options 
