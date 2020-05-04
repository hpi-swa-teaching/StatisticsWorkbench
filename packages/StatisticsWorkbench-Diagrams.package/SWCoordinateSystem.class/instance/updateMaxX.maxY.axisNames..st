updating
updateMaxX: maximumX maxY: maximumY axisNames: axisDimensionNames

	self xAxis maximum: maximumX.
	self yAxis maximum: maximumY.
	self setAxisPadding.
	self axisNames: axisDimensionNames.
	self update