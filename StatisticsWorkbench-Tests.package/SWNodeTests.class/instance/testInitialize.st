tests
testInitialize 

	| node |
	node := SWNode new.
	
	self assert: node predecessors isCollection.
	self assert: node successors isCollection