as yet unclassified
asPoint

	self dimensions ~= 2
		ifTrue: [SWInvalidDimensionError signal: 'Vector must have two dimensions!'].
		
	^ (self data at: 1) @ (self data at: 2)