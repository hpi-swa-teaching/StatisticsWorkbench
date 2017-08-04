tests
testRemoveLast

	| data |
	data := SWDataTests createSeeded.
	
	data remove: #(3 0).
	
	self assert: [ data last key data = #(1 3) ]