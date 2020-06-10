updating
updateMinX: minimumX minY: minimumY axisNames: axisDimensionNames

	self xAxis minimum: minimumX.
	self yAxis minimum: minimumY.
	self setAxisPadding.
	self axisNames: axisDimensionNames.
	self update