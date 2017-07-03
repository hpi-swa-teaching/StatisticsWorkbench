as yet unclassified
update: anArray

	self dimensions = anArray size
		ifFalse: [SWInvalidDimensionError signal: 'New vector must have same dimensions!'].
		
	self data: anArray