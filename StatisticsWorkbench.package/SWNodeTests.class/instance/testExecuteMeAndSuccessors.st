tests
testExecuteMeAndSuccessors
	
	| workflow node1 node2 node3 node4 testData |
	
	testData := SWDataTests createSeeded.
	workflow := SWWorkflow new.
	node1 := SWNode createWith: [testData].
	workflow add: node1.
	node2 := SWNode createWith: [ :data | data remove: #(0 1). data ].
	workflow add: node2 after: node1.
	node3 := SWNode createWith: [ :data | data add: (SWDate create: #(4 2)); add: (SWDate create: #(4 4)). data ].
	workflow add: node3 after: node1.
	node4 := SWNode createWith: [ :data | data add: (SWDate create: #(5 2)). data ].
	workflow add: node4 after: node3.

	self assert: node1 output = nil.
	self assert: node2 output = nil.
	self assert: node3 output = nil.
	self assert: node4 output = nil.
		
	node1 executeMeAndSuccessors.
	
	self assert: node1 output = testData.
	self assert: node2 output size = (testData size - 1).
	self assert: node3 output size = (testData size + 2).
	self assert: (node3 output at: #(4 2)) notNil.
	self assert: (node3 output at: #(4 4)) notNil.
	self assert: node4 output size = (testData size + 3).
	self assert: (node4 output at: #(4 2)) notNil.
	self assert: (node4 output at: #(4 4)) notNil.
	self assert: (node4 output at: #(5 2)) notNil