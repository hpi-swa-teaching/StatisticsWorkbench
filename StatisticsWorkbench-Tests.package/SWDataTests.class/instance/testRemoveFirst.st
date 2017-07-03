as yet unclassified
testRemoveFirst

	| data |
	data := SWDataTests createSeeded.
	
	data remove: #(0 1).
	
	self assert: [ data first key = #(1 1) ]