accessing
setAllDimensionNames: anArray
	(self dimensions = anArray size)
		ifFalse: [ SWInvalidDimensionError signal: 'Dimension of Data and size of provided array of names are not equal.' ]. 
	dimensionNames := anArray.
	self changed.