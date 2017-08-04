tests
testCreate

	self assert: (SWDate create: #(0 0)) notNil.
	self assert: (SWDate create: #(0 0 0)) notNil.
	self assert: (SWDate create: #(1 2 3 4 5)) notNil