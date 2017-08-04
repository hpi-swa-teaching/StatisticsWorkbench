testing
testAdd
	
	self assert: self barGraph bars size = self data size.
	
	self data add: (SWDate create: 100 @ 100).
	self assert: self barGraph bars size = self data size
	
	
	