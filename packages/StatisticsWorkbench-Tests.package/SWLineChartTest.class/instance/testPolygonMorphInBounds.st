testing
testPolygonMorphInBounds

	self assert: [self diagram coordinateSystem bounds origin <= self lineChart lineMorph bounds origin].
	self assert: [self diagram coordinateSystem bounds corner >= self lineChart lineMorph bounds corner]
	