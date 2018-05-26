as yet unclassified
fromString: aString
	| newData segments dimensions individualSegment names |
	
	newData := SWData create.
	
	segments := aString subStrings.
	names := (segments at: 1) splitBy: #($|).
	dimensions := names size.
	(dimensions = 0)
		ifTrue: [SWInvalidDimensionError signal: 'Dimension of data cant be 0.'].
		
	segments := segments copyAfter: (segments at: 1).
	
	segments do: [:each |
		individualSegment := SWVector fromString: each.
		(dimensions = individualSegment dimensions)
			ifTrue: [newData addVector: individualSegment]
			ifFalse: [SWInvalidDimensionError signal: 'Dimension of data must be consistent.']].
		
	newData dimensionNames: names.
	
	self flag: #justForTesting. "just to test the GUI pls write a proper method that takes a String an converts it into Data. String could look like 'Dimensions: 2;  [1,2] [2,3]' catch all errors so the user cant do messy stuff "
	^ newData. 
	"^SWDataTest createSeeded2. "