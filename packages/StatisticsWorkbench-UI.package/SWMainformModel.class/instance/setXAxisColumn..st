column-selection
setXAxisColumn: aNumber

	self xAxis: (self columns at: aNumber).
	self changed: #setXAxisColumn.