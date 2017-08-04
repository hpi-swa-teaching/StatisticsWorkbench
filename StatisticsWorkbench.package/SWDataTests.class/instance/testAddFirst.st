tests
testAddFirst

	self data add: (SWDate fromArray: #(0 0)).
	
	self assert: self data first key data = #(0 0)