as yet unclassified
testIsEnd

	| node |
	node := SWNode new.
	self assert: [ node isEnd ].
	
	node successors add: SWNode new.
	self assert: [ node isEnd not].
	
	node successors removeAt: 1.
	self assert: [ node isEnd ].
	
	node predecessors add: SWNode new.
	self assert: [ node isEnd].
	
	node predecessors removeAt: 1.
	self assert: [ node isEnd ]