geometry
drawKeyFor: aPieChart
	| position |
	
	position := 0.5.
	self key topLeft: aPieChart topRight.
	
	self pieSlices do: [:pieSlice | 
		self 
			drawKeyPointOf: pieSlice at: position;
			drawColorSwatchOf: pieSlice at: position.
		position := position + 1].
	
	self key extent: self computeKeyExtent