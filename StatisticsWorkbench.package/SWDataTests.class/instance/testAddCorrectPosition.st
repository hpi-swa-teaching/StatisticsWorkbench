as yet unclassified
testAddCorrectPosition

	| data |
	data := SWDataTests createSeeded.
	
	data add: (SWDate fromArray: #(2 0)).
	
	self assert: [ data size = 5 ].
	
	self assert: [ data first next next next key data = #(2 0) ].
	self assert: [ data last previous key data = #(2 0) ]
	