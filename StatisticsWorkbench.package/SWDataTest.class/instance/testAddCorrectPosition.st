tests
testAddCorrectPosition
	
	self data add: #(2 0).
	
	self assert: self data size = 5.
	self assert: self data first next next next key data = #(2 0).
	self assert: (data atIndex: data size - 1) key data = #(2 0)
	