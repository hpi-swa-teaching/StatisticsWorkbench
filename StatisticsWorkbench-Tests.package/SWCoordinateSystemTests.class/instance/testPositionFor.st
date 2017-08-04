testing
testPositionFor

	| point1 point2|
	
	point1 := 0 @ 0.
	point2 := 100 @ 100.
	self assert: (self coordinateSystem positionFor: point1) = (100 @ 600).
	self assert: (self coordinateSystem positionFor: point2) = (500 @ 200).