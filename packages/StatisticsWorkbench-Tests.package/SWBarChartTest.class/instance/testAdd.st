testing
testAdd
	
	self assert: self data size equals: self barChart bars size.
	self data add: (SWVector fromPoint: (100 @ 100)).
	self assert: self data size equals: self barChart bars size