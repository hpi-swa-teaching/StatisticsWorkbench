as yet unclassified
testMaxAcceptsXandY

	| data |
	data := SWDataTests createSeeded.
	
	self assert: [ (data max: #x) = 3 ].
	self assert: [ (data max: #y) = 3 ].
	
	self should: [ data max: #z ] raise: SWInvalidDimensionError 