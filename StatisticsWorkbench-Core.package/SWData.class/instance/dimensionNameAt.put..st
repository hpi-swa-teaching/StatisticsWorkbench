accessing
dimensionNameAt: aDimension put: aName
	self dimensionNames at: aDimension put: aName.
	self changed.