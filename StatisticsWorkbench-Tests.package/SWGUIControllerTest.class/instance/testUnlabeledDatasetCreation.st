testing
testUnlabeledDatasetCreation

	self controller createDatasetFrom: 'Time Value 0 1 1 1 2 3 3 1' named: '' usingLabels: false.
	self
		assert: self controller datasetCount equals: 1;
		assert: (self controller datasets first) equals: SWDataTest createSeeded3; 
		assert: self logString equals: '|processNewDataset:withID:named:|'