as yet unclassified
fromString: aString ofDataDimension: aDimension
	| newData date segments dimensionNames values |
	
	newData := SWDataLabeled create.
	
	segments := aString findTokens: String cr, String tab, ' |()[]{},@#=&'.
	dimensionNames := segments copyFrom: 1 to: aDimension.
	values := segments copyFrom: aDimension + 1 to: segments size.
	
	values groupsOf: (aDimension + 1) atATimeDo: [:group | 
		date := SWVector fromArray: (group allButFirst collect: [:each | each asNumber]).
		date labelName: group first.
		newData add: date].
	newData setAllDimensionNames: dimensionNames.
	^ newData