tests
testRemove

	| data |
	data := SWDataTests createSeeded.
	
	data remove: #(1 0).
	
	self assert: [ (data at: #(1 0)) isNil  ].
	self assert: [ (data size = (SWDataTests createSeeded size - 1 )) ]