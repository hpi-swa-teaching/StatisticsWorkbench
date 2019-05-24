testing
testRemove
	
	self data removeArray: #(0 1).
	self assert: (SWDataTest createSeeded size - 1) equals: self data size