as yet unclassified
testAt

	| data |
	data := SWDataTests createSeeded.
	
	self assert: [ (data at: #(0 1)) notNil ].
	self assert: [ (data at: #(1 1)) notNil ].
	self assert: [ (data at: #(1 3)) notNil ].
	self assert: [ (data at: #(3 0)) notNil ].
	
	" These points aren't contained "
	self assert: [ (data at: #(0 0)) isNil ].
	self assert: [ (data at: #(2 0)) isNil ].
	self assert: [ (data at: #(3 1)) isNil ].
	self assert: [ (data at: #(1 2)) isNil ].
	
	" Invalid dimension requested "
	self should: [ (data at: #(1 2 3)) ] raise: SWInvalidDimensionError.
	self should: [ (data at: #(1)) ] raise: SWInvalidDimensionError 