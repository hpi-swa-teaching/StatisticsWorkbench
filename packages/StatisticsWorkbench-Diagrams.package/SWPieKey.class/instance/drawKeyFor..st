geometry
drawKeyFor: aPieChart
	| positionFactor |
	
	positionFactor := self class defaultKeyPositionFactor.
	self key topLeft: aPieChart topRight.
	self pieSlices do: [:pieSlice |
		self 
			drawKeyPointOf: pieSlice at: positionFactor;
			drawColorSwatchOf: pieSlice at: positionFactor.
			positionFactor := positionFactor + 1].
	
	self key extent: self computeKeyExtent