as yet unclassified
fromString: aString ofDataDimension: aDimension
	| segments dimensionNames values newData |
	
	(aString size < 2) 
		ifTrue: [SWInvalidArgumentError signal: 'Creation of Datasets needs at least 2 values.'].
		
	segments := aString findTokens: String cr, String tab, ' |()[]{},@#=&'.
	dimensionNames := segments copyFrom: 1 to: aDimension.
	values := segments copyFrom: aDimension + 1 to: segments size.
	
	newData := self processStringData: values ofDataDimension: aDimension. 
	newData setAllDimensionNames: dimensionNames.
	^ newData