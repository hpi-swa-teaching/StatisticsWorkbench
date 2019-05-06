testing
testRemove
	
	self data removeArray: #(0 1).
	self assert: [self lineChart lineMorph vertices size = self data size]