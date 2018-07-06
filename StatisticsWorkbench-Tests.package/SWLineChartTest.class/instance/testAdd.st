testing
testAdd
	
	self data add: (SWVector fromPoint: 0 @ 0).
	self assert: (self diagram charts first) lineMorph vertices size = self data size