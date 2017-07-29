updating
updatePieslices

	| pos wheelColors |
	self flag: #fishy.
	pos := 1.
	wheelColors := Color wheel: self data size.
	self removeAllPieslices.
	self data do:  [ :date | 
		self createPieSliceFrom: date key x with: date key y  at: pos colored: (wheelColors at: pos).
		pos := pos + 1
	]