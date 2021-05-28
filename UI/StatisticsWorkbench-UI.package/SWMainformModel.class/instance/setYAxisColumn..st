accessing
setYAxisColumn: aNumber

	self yAxis: (self columns at: aNumber).
	self changed: #setYAxisColumn.