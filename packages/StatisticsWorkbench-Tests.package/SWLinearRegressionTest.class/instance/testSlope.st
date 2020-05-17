as yet unclassified
testSlope
| xValues yValues |
	xValues := self easyData first.
	yValues := self easyData second.
	self assert: 1 equals: (linearRegression calculateSlopeFromXValues: xValues andYValues: yValues).
	
	xValues := self mediumData first.
	yValues := self mediumData second.
	self assert: 0.0025 equals: (linearRegression calculateSlopeFromXValues: xValues andYValues: yValues) 