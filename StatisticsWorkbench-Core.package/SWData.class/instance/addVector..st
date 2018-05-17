adding
addVector: aSWVector
	(self size = 0)
		ifTrue: [self dimensions: aSWVector dimensions].
	(self dimensions = aSWVector dimensions)
		ifFalse: [ SWInvalidDimensionError signal: 'Dimension of linked list and dimension of inserted item must be equal.' ]. 
	super add: aSWVector.
	self changed.