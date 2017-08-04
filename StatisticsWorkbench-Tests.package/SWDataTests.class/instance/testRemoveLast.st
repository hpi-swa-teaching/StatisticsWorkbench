tests
testRemoveLast
	
	self data remove: #(3 0).
	
	self assert: self data last key data = #(1 3)