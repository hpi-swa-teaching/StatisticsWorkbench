as yet unclassified
drawKey
	| position |
	
	position := 0.5.
	self key bottomRight: self owner owner bottomRight.
	"self key topLeft: self owner extent."
	
	self pieSlices do: [:pieSlice | 
		self 
			drawKeyPointOf: pieSlice at: position;
			drawColorSwatchOf: pieSlice at: position.
		position := position + 1].
	
	self key extent: self computeKeyExtent.