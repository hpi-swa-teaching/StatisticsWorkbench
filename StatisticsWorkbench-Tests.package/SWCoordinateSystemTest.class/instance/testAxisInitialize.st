testing
testAxisInitialize

	self assert: self coordinateSystem axisNames first = #x.
	self assert: self coordinateSystem axisNames second = #y.