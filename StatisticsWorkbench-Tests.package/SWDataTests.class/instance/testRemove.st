as yet unclassified
testRemove

	| data |
	data := SWDataTests class createSeeded.
	
	data remove: #(1 0).
	
	self assert: [ (data at: #(1 0)) isNil  ].
	self assert: [ (data size = (SWDataTests class createSeeded - 1 )) ]