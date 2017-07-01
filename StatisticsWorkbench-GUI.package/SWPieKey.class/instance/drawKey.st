as yet unclassified
drawKey
	| position |
	
	position := 0.5.
	
	self pieslices do: [ :pieslice | 
		self 
			drawKeyPointOf: pieslice at: position;
			drawColorSwatchOf: pieslice at: position.
		
		position := position+1.
	].
	
	self extent: self computeKeyExtent
