geometry
setAxisPadding

	| paddedMaximumX paddedMaximumY |
	
	paddedMaximumX := (self xAxis maximum * self class defaultAxisValuePaddingFactor) ceiling.
	paddedMaximumY := ( self yAxis maximum * self class defaultAxisValuePaddingFactor) ceiling.

	self xAxis maximum: paddedMaximumX.
	self yAxis maximum: paddedMaximumY
