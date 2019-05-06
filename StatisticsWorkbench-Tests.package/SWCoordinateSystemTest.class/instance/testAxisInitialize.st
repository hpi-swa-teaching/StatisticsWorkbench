testing
testAxisInitialize

	self assert: #x equals: self coordinateSystem axisNames first.
	self assert: #y equals: self coordinateSystem axisNames second