accessing
data: anArray
	
	(self data notNil and: [ self dimensions ~= anArray size ])
		ifTrue: [ SWInvalidDimensionError signal: 'New vector must have same dimensions!' ].
	
	data := anArray
