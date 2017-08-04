testing
testRemoveAll

	self lineChart removeAll. 
	self assert: self lineChart vertices size = 0