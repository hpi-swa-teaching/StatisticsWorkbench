as yet unclassified
testNext

	| data first |
	data := SWDataTests createSeeded.
	
	first := data first.
	
	self assert: [ first key = #(0 1) ].
	self assert: [ first next key = #(1 1) ].
	self assert: [ first next next next key = #(3 0) ].
	self assert: [ first next next next next = nil ]