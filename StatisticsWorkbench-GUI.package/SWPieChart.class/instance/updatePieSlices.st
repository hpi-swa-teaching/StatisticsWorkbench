updating
updatePieSlices

	| position wheelColors |
	self flag: #fishy.
	position := 1.
	wheelColors := Color wheel: self data size.
	self removeAllPieSlices.
	self data do:  [ :vector | 
		self createPieSliceFrom: vector x with: vector y at: position colored: (wheelColors at: position).
		position := position + 1
	]