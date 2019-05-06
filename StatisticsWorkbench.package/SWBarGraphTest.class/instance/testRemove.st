testing
testRemove
	
	self assert: self data size equals: self barGraph bars size.
	
	self data removeArray: #(1 1).
	self assert: self data size equals: self barGraph bars size