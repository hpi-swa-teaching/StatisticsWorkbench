as yet unclassified
x
	
	self dimensions < 1
		ifTrue: [SWInvalidDimensionError signal: 'No X-Dimension available'].
		
	^ self at: 1