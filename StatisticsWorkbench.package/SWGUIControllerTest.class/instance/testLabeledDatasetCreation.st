testing
testLabeledDatasetCreation

	self controller createDatasetFrom: 'Time|Value one|0|1 two|1|1 three|2|3 four|3|1' named: '' usingLabels: true.
	self assert: 1 equals: self controller datasetCount.
	self assert: SWDataTest createSeeded4 equals: (self controller datasets first).
	self assert: '|processNewDataset:withID:named:|' equals: self logString