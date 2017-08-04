tests
testMax

	| data |
	data := SWDataTests createSeeded.
	
	self assert: [ (data max: 1) = 3].
	self assert: [ (data max: 2) = 3].

	self should: [ data max: 3 ] raise: SWInvalidDimensionError.
	self should: [ data max: 0 ] raise: SWInvalidDimensionError.
	self should: [ data max: 'a'] raise: SWInvalidArgumentError 