testing
testAdd

	self data add: (SWVector fromPoint: (0 @ 0)).	
	self assert: [(self diagram charts first) dataPoints size = self data size]