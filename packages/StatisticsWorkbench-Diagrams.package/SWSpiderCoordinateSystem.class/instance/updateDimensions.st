as yet unclassified
updateDimensions

	(self diagram charts)
		ifEmpty: [self dimensions: self class defaultDimensions]
		ifNotEmpty: [self dimensions: self diagram maximumDimension]
