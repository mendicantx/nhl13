$(document).ready -> 
  $("#players-table").tablesorter
    sortList: [[0,0], [1,0]]
    theme: 'blue'
    widgets: ['filter']
    widgetOptions : 
      filter_columnFilters : true
      filter_cssFilter : 'tablesorter-filter'

