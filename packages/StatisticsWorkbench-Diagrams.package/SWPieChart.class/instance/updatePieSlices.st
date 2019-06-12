updating
updatePieSlices
	| position wheelColors |
	
	position := 1.
	wheelColors := Color wheel: self data size.
	self removeAllPieSlices.
	self data do: [:vector | 
		self createPieSliceFrom: vector x with: vector y at: position colored: (
		(position > self colorArray size) 
			ifFalse: [self colorArray at: position] 
			ifTrue:[wheelColors at: position]).
		position := position + 1]