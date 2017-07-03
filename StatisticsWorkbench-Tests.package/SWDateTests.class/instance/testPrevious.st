as yet unclassified
testPrevious

	| second |
	second := SWDataTests createSeeded at: #(1 1).
	
	self assert: [ second previous = #(0 1) ].
	self assert: [ second previous previous = nil ]