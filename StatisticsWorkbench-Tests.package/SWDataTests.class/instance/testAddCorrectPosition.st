tests
testAddCorrectPosition

	self data add: (SWDate fromArray: #(2 0)).
	
	self assert: self data size = 5.
	self assert: self data first next next next key data = #(2 0).
	self assert: (self data atIndex: (self data size - 1)) key data = #(2 0)
	