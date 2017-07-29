errors
validDimensionIndexFor: anInteger
	
	| valid |
	anInteger isSymbol
		ifTrue: [ valid := self dimensionIndexFor: anInteger ]
		ifFalse: [ valid := anInteger ].
	self 
		errorIfNotANumber: valid;
	 	errorIfDimensionIsOutOfBounds: valid.
	^ valid