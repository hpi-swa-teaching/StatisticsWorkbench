testing
testRemove
	
	self assert: self barGraph bars size = self data size.
	
	self data removeArray: #(20 10).
	self data removeArray: #(5 5).
	self assert: self barGraph bars size = self data size
	
	
	