as yet unclassified
update: anArray

	(self dimensions = anArray size) not
		ifTrue: [SWInvalidDimensionError signal: 'New vector must have same dimensions!'].