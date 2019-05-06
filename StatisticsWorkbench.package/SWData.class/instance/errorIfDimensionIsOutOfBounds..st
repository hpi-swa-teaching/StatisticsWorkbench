as yet unclassified
errorIfDimensionIsOutOfBounds: anIndex

	(anIndex between: 1 and: self dimensions) 
		ifFalse: [ SWInvalidDimensionError signal: 'Can not calculate max in undefined dimension' ].