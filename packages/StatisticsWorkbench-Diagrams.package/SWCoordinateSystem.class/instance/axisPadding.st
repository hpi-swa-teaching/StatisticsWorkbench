geometry
axisPadding

	| paddedMaximumX paddedMaximumY |
	self halt.
	paddedMaximumX := self xAxis maximum +  (0*(self xAxis valueRange * self class defaultAxisValuePaddingFactor) ceiling).
	paddedMaximumY := self yAxis maximum + (0*(self yAxis valueRange * self class defaultAxisValuePaddingFactor) ceiling).

	self xAxis maximum: paddedMaximumX.
	self yAxis maximum: paddedMaximumY
