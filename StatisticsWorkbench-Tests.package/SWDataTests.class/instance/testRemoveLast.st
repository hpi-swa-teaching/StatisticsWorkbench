as yet unclassified
testRemoveLast

	| data |
	data := SWDataTests createSeeded.
	
	data remove: #(3 0).
	
	self assert: [ data last key = #(1 3) ]