testing
testMedian

	self assert: 1 equals: (self data median: 1).
	self assert: 1 equals: (self data median: 2)