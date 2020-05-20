as yet unclassified
testIntersect
| xValues yValues |
	xValues := self easyData first.
	yValues := self easyData second.
	self assert: 0 equals: (linearRegression calculateIntersectFromXValues: xValues andYValues: yValues).
	
	xValues := self mediumData first.
	yValues := self mediumData second.
	self assert: 3081.5581 equals: (linearRegression calculateIntersectFromXValues: xValues andYValues: yValues)