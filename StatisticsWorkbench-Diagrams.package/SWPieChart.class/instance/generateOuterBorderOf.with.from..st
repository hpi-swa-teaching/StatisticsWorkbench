as yet unclassified
generateOuterBorderOf: aPieSlice with: aValue from: aPointset
	
	self flag: #fishy.
	
	0 to: (self computeRadianFrom: aValue) by: 0.1 do: [ :x | 
		aPointset add: (aPieSlice startpoint rotateBy: x about: self center)
	]. 
	
	^ aPointset