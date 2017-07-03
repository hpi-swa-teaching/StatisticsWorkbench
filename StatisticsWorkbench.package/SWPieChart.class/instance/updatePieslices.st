as yet unclassified
updatePieslices
	| pos wheelColors |
	
	pos := 1.
	wheelColors := Color wheel: self data size.
	
	self resetPieslices.
	
	self data keysAndValuesDo:  [:aKey :aValue | 
		self createPieSliceFrom: aKey with: aValue at: pos colored: (wheelColors at: pos). 
		pos := pos + 1
	]