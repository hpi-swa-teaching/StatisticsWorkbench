as yet unclassified
testAdd

	| data newDate |
	data := SWDataTests class createSeeded.
	newDate := SWDate create: #(5 5).
	data add: newDate.
	
	self assert: [ (data at: #(5 5)) = newDate ].
	self assert: [ (data size = (SWDataTests class createSeeded + 1 )) ]