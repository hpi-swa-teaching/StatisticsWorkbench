testing
testAdd
	
	self data add: (SWDate create: 0 @ 0).
	self assert: (self diagram charts at: 1) lineMorph vertices size = self data size