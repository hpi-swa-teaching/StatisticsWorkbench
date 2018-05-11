testing
testRemove
	
	self assert: self barGraph bars size = self data size.
	
	self data removeArray: #(1 1).
	self assert: self barGraph bars size = self data size
	
	
	