testing
testFromString

	self assert: (SWVector fromString: '0|0') = (SWVector create: #(0 0)).
	self assert: (SWVector fromString: '5|1') = (SWVector create: #(5 1))