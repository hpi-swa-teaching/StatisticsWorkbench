updating
update

	self updateRasterSize.
	self xAxis update.
	self xAxis setLegend: (self axisNames at: 1).
	self yAxis update.
	self yAxis setLegend: (self axisNames at: 2).