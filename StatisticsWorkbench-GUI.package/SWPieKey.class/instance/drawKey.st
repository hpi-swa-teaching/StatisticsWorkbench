as yet unclassified
drawKey
	| position |
	
	position := 0.5.
	"self key bottomRight: self owner owner bottomRight."
	self key topRight: self owner center.
	
	self pieslices do: [:pieslice | 
		self 
			drawKeyPointOf: pieslice at: position;
			drawColorSwatchOf: pieslice at: position.
		position := position + 1].
	
	self key extent: self computeKeyExtent.