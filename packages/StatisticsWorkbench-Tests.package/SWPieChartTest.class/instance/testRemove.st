testing
testRemove

	self data removeArray: #(1 5).
	self assert: self data size equals: self pieChart pieSlices size