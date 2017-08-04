tests
testRemove
	
	self data remove: #(1 0).
	
	self assert: (data at: #(1 0)) isNil.
	self assert: data size = (SWDataTest createSeeded size - 1)