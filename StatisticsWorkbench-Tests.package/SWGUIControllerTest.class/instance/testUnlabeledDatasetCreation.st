testing
testUnlabeledDatasetCreation

	self controller createDatasetFrom: 'Time Value 0 1 1 1 2 3 3 1' named: '' usingLabels: false.
	self assert: self controller datasetCount  equals: 1.  
	self assert: (self controller datasets at: 1) equals: SWDataTest createSeeded3.
	self flag: #fishy "schöner machen" 