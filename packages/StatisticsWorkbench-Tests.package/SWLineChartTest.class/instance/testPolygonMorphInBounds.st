testing
testPolygonMorphInBounds
	
	| chartLowerLeftCorner chartUpperRightCorner polygonLowerLeftCorner polygonUpperRightCorner |
	
	self lineChart lineMorph borderWidth: 0. "removes struggle with border offset"
	
	polygonLowerLeftCorner := (self lineChart lineMorph bounds origin x @ self lineChart lineMorph bounds corner y).
	chartLowerLeftCorner := self diagram coordinateSystem xAxis startPoint. "used by coordinate system for positioning points"
	self assert: polygonLowerLeftCorner equals: chartLowerLeftCorner.
	
	polygonUpperRightCorner := (self lineChart lineMorph bounds corner x @ self lineChart lineMorph bounds origin y).
	chartUpperRightCorner := (self diagram coordinateSystem bounds corner x @ self diagram coordinateSystem bounds origin y).
	self assert: [(polygonUpperRightCorner x <= chartUpperRightCorner x) and: (polygonUpperRightCorner y >= chartUpperRightCorner y)]