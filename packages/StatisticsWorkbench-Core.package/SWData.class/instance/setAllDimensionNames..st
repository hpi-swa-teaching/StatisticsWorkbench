accessing
setAllDimensionNames: anArray

	(self dimensions = anArray size)
		ifFalse: [SWInvalidDimensionError signal: 'Dimension of Data and size of provided array of names are not equal.']. 
	self dimensionNames: anArray.
	self changed
