as yet unclassified
testInitialize 

	self 
		assert: self controller datasetCount equals: 0; 
		assert: self controller datasets notNil. 