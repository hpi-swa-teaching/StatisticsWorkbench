creation
generateOuterBorderOf: aPieSlice with: aValue from: aPointset
	
	0 to: (self computeRadianFrom: aValue) by: 0.1 do: [:x | 
		aPointset add: (aPieSlice startPoint rotateBy: x about: self center)].
	^ aPointset