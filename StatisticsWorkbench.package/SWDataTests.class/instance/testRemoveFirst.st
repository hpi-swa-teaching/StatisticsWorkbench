tests
testRemoveFirst
	
	self data remove: #(0 1).
	
	self assert: self data first key data = #(1 1)