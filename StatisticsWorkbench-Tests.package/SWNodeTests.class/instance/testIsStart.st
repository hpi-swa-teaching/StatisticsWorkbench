as yet unclassified
testIsStart

	| node |
	node := SWNode new.
	self assert: [ node isStart ].
	
	node successors add: SWNode new.
	self assert: [ node isStart ].
	
	node successors add: SWNode new.
	self assert: [ node isStart ].
	
	node predecessors add: SWNode new.
	self assert: [ node isStart not].
	
	node predecessors removeAt: 1.
	self assert: [ node isStart ]