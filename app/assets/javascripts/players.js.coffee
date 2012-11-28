# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready -> 
	options = { enableCellNavigation: true, enableColumnReorder: false, autoheight: true; forceFitColumns: true;}

	columns = [
		{id: 'team', name: 'Team', field: 'team'}
		{id: 'name', name: 'Name', field: 'name'}
		{id: 'sotw', name: 'SOTW', field: 'sotw', formatter: Slick.Formatters.Checkmark}
		{id: 'ps3_bin', name: 'PS3 BIN', field: 'ps3_bin'}
		{id: 'ps3_auction', name: 'PS3 AUC', field: 'ps3_auction'}
		{id: 'xbox_bin', name: 'XBox BIN', field: 'xbox_bin'}
		{id: 'xbox_auction', name: 'XBox AUC', field: 'xbox_auction'}
		{id: 'skate_high', name: 'SKT/HGH', field: 'skate_high'}
		{id: 'shot_low', name: 'SHT/LOW', field: 'shot_low'}
		{id: 'hand_quick', name: 'HND/QCK', field: 'hand_quick'}
		{id: 'check_position', name: 'CHK/POS', field: 'check_position'}
		{id: 'defense_rebound', name: 'DEF/RBD', field: 'defense_rebound'}
		{id: 'position', name: 'POS', field: 'position'}
		{id: 'overall', name: 'OVR', field: 'overall'}
		{id: 'true_overall', name: 'True OVR', field: 'true_overall'}
		{id: 'player_type', name: 'Type', field: 'player_type'}
		{id: 'handed', name: 'Hand', field: 'handed'}
		{id: 'salary', name: 'Salary', field: 'salary'}
		{id: 'path', name: 'path', field: 'path'}
	]


	grid = new Slick.Grid '#players_table', [], columns, options 
	

	$.ajax '/players.json',
		type: 'GET'
		dataType: 'json'
		success: (data, textStatus, jqXHR) ->
			grid.setData data
			grid.render()
