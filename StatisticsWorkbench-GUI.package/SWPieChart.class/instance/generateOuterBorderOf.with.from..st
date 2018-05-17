as yet unclassified
generateOuterBorderOf: aPieslice with: aValue from: aPointset
	
	self flag: #fishy.
	
	0 to: (self computeRadianFrom: aValue) by: 0.1 do: [ :x | 
		aPointset add: (aPieslice startpoint rotateBy: x about: self center)
	]. 
	
	^ aPointset