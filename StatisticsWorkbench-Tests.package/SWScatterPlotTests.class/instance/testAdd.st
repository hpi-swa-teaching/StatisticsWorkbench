tests
testAdd

	self data add: (SWDate fromPoint: 0@0).	
	self assert: [ (self diagram charts at: 1) dataPoints size = self data size ]