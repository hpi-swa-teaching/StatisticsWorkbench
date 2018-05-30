adding/removing
addVector: aSWVector

	(self size = 0)
		ifTrue: [	self dimensions: aSWVector dimensions.
				self dimensionNames: (Array new: self dimensions).
				self initializeDimensionNamesOfSize: self dimensions].
	(self dimensions = aSWVector dimensions)
		ifFalse: [SWInvalidDimensionError signal: 'Dimension of linked list and dimension of inserted item must be equal.']. self flag: #linkedList. "-> vielleicht: 'Dimension of Data and size of provided array of names are not equal.' ??"
	super add: aSWVector.
	self changed