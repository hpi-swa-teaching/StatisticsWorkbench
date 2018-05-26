accessing
dimensionNameAt: aDimension put: aName
	(self dimensions >= aDimension)
		ifFalse: [ SWInvalidDimensionError signal: 'Dimension of Data and dimension of added name are not equal.' ]. 
	self dimensionNames at: aDimension put: aName.
	self changed.