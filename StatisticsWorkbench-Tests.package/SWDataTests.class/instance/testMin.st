tests
testMin

	| data |
	data := SWDataTests createSeeded.
	
	self assert: [ (data min: 1) = 0].
	self assert: [ (data min: 2) = 0].

	self should: [ data min: 3 ] raise: SWInvalidDimensionError.
	self should: [ data min: 0 ] raise: SWInvalidDimensionError.
	self should: [ data min: 'a'] raise: SWInvalidArgumentError 