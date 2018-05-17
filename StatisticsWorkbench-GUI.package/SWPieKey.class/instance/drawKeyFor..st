as yet unclassified
drawKeyFor: aPieChart
	| position |
	
	position := 0.5.
	self key topLeft: aPieChart topRight.
	"self key bottomRight: self owner owner bottomRight."
	
	self pieslices do: [:pieslice | 
		self 
			drawKeyPointOf: pieslice at: position;
			drawColorSwatchOf: pieslice at: position.
		position := position + 1].
	
	self key extent: self computeKeyExtent.