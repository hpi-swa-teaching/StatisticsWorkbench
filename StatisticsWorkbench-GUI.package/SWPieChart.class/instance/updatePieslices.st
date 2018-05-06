updating
updatePieslices

	| pos wheelColors |
	self flag: #fishy.
	pos := 1.
	wheelColors := Color wheel: self data size.
	self removeAllPieslices.
	self data do:  [ :vector | 
		self createPieSliceFrom: vector x with: vector y at: pos colored: (wheelColors at: pos).
		pos := pos + 1
	]