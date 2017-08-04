tests
testIsStart

	| node |
	node := SWNode new.
	self assert: node isStart.
	
	node successors add: SWNode new.
	self assert: node isStart.
	
	node successors add: SWNode new.
	self assert: node isStart.
	
	node predecessors add: SWNode new.
	self deny: node isStart.
	
	node predecessors removeAt: 1.
	self assert: node isStart