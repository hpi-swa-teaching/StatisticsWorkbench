testing
testAdd
	
	self data add: (SWVector fromPoint: (0 @ 0)).
	self assert: self data size equals: (self diagram charts first) lineMorph vertices size
