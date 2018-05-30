as yet unclassified
testDatasetCreation

	self controller createNewDatasetFrom: 'Time Value 0 1 1 1 2 3 3 1' named: ''.
	self assert: self controller datasetCount  equals: 1.  
	self assert: (self controller datasets at: 1) equals: SWDataTest createSeeded3. "schöner machen" 