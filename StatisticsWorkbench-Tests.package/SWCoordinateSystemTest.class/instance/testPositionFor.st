testing
testPositionFor
	| point1 point2 |
	
	point1 := 0 @ 0.
	point2 := 100 @ 100.
	"This update of max values is normally done automatically, by the updateCoordinateSystem function of SWDiagram, when the dataset is set or changed."
	self coordinateSystem xAxis max: 100.
	self coordinateSystem yAxis max: 100.
	self assert: (self coordinateSystem positionFor: point1) = (100 @ 600).
	self assert: (self coordinateSystem positionFor: point2) = (500 @ 200)