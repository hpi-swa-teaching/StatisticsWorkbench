testing
testRemove
	
	self assert: self barGraph bars size = self data size.
	
	self data remove: #(1 1).
	self assert: self barGraph bars size = self data size
	
	
	