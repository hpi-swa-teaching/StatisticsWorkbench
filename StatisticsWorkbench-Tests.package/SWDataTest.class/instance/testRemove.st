testing
testRemove
	
	self data removeArray: #(0 1).
	
	self assert: self data size = (SWDataTest createSeeded size - 1)