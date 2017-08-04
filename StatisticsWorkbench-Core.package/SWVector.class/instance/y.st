as yet unclassified
y
	
	self dimensions < 2
		ifTrue: [SWInvalidDimensionError signal: 'No Y-Dimension available'].
		
	^ self data at: 2