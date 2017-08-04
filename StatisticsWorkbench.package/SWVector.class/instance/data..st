accessing
data: anArray
	
	self data isNil 
			ifFalse: [ self dimensions = anArray size
						ifFalse: [ SWInvalidDimensionError signal: 'New vector must have same dimensions!' ] ].
	data := anArray
