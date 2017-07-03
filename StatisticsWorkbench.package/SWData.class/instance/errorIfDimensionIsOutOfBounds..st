as yet unclassified
errorIfDimensionIsOutOfBounds: anIndex

	(self dimensions >= anIndex and: [ anIndex > 0 ])
		ifFalse: [ SWInvalidDimensionError signal: 'Can not calculate max in undefined dimension' ].