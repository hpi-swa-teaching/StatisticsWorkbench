testing
testRemoveAll

	self barGraph removeAll.
	self assert: self barGraph bars size = 0
	
	