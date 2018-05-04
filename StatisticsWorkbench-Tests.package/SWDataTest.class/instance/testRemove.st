tests
testRemove
	
	self data removeArray: #(0 1).
	
	self assert: data size = (SWDataTest createSeeded size - 1)