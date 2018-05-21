as yet unclassified
drawKeyFor: aPieChart
	| position |
	
	position := 0.5.
	self key topLeft: aPieChart topRight.
	"self key bottomRight: self owner owner bottomRight."
	
	self pieSlices do: [:pieSlice | 
		self 
			drawKeyPointOf: pieSlice at: position;
			drawColorSwatchOf: pieSlice at: position.
		position := position + 1].
	
	self key extent: self computeKeyExtent.