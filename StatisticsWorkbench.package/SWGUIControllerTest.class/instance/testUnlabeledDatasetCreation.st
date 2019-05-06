testing
testUnlabeledDatasetCreation

	self controller createDatasetFrom: 'Time Value 0 1 1 1 2 3 3 1' named: '' usingLabels: false.
	self assert: 1 equals: self controller datasetCount.
	self assert: SWDataTest createSeeded3 equals: (self controller datasets first).
	self assert: '|processNewDataset:withID:named:|' equals: self logString