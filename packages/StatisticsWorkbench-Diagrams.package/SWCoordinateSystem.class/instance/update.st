updating
update

	self updateRasterSize.
	self xAxis update.
	self xAxis setLegend: (self axisNames first).
	self yAxis update.
	self yAxis setLegend: (self axisNames second).

	self positionAxisX.
	self positionAxisY.
	self positionAxisX.
	
	self updateRasterSize
