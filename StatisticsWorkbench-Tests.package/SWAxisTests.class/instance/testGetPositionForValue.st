as yet unclassified
testGetPositionForValue

	| x1 x2 x3 axis |
	axis := SWAxis create.
	x1 := 0.
	x2 := 400.
	x3 := 100.
	self assert: [(axis getPositionForValue: x1) = 0].
	self assert: [(axis getPositionForValue: x2) = 400].
	axis max: 100.
	self assert: [(axis getPositionForValue: x3) = 400].
	
	