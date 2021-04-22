accessing
selectDimension: aDimension

	^ self collect: [:each | each at: (self dimensionIndex: aDimension)]

