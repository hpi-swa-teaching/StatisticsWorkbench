testing
testRemove
	
	self data remove: #(0 1).
	self assert: [ self lineChart lineMorph vertices size = self data size ]