as yet unclassified
asPoint

	self dimensions ~= 2
		ifTrue: [ SWInvalidDimensionError signal: 'Vector must have two dimensions in order to convert it to a point!' ].
	^ (self at: 1) @ (self at: 2)