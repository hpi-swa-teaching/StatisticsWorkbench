as yet unclassified
updatePieslices
	| pos wheelColors |
	
	pos := 1.
	wheelColors := Color wheel: self dataset size.
	
	self resetPieslices.
	
	self dataset keysAndValuesDo:  [:aKey :aValue | 
		self createPieSliceFrom: aKey with: aValue at: pos colored: (wheelColors at: pos). 
		pos := pos + 1
	]