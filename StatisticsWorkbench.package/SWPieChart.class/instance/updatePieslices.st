updating
updatePieslices
	| pos wheelColors |
	
	pos := 1.
	wheelColors := Color wheel: self data count.
	
	self removeAllPieslices.
	
	self data do:  [ :date | 
		self createPieSliceFrom: date key x with: date key y  at: pos colored: (wheelColors at: pos). 
		pos := pos + 1
	]