as yet unclassified
testPositionFor

	|coordinateSystem point1 point2|
	
	point1 := 0@0.
	point2 := 100@100.
	coordinateSystem := SWCoordinateSystem create.
	self assert: [(coordinateSystem positionFor: point1) = (100@600)].
	self assert: [(coordinateSystem positionFor: point2) = (500@200)].