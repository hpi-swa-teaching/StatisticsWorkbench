testing
testInitialize 

	self assert: 0 equals: self controller datasetCount.
	self assert: self controller datasets notNil