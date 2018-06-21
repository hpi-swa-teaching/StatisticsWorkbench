as yet unclassified
fromString: aString ofDataDimension: aDimension
	| newData segments dimensionNames values |
	
	newData := SWDataUnlabeled create.
	
	segments := aString findTokens: String cr, String tab, ' |()[]{},@#=&'.
	dimensionNames := segments copyFrom: 1 to: aDimension.
	values := segments copyFrom: aDimension + 1 to: segments size. 
	values := values collect: [:each | each asNumber].
	
	values groupsOf: aDimension atATimeDo: [:date | newData add: date].
	newData setAllDimensionNames: dimensionNames.
	^ newData