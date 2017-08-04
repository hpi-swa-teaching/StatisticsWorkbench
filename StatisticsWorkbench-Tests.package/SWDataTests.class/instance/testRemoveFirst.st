tests
testRemoveFirst

	| data |
	data := SWDataTests createSeeded.
	
	data remove: #(0 1).
	
	self assert: [ data first key data = #(1 1) ]