as yet unclassified
testNext

	| data first |
	data := SWDataTests createSeeded.
	
	first := data first.
	
	self assert: [ first key data = #(0 1) ].
	self assert: [ first next key data = #(1 1) ].
	self assert: [ first next next next key data = #(3 0) ].
	self assert: [ first next next next next = nil ]