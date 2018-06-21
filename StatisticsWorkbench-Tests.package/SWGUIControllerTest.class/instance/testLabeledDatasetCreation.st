testing
testLabeledDatasetCreation

	self controller createDatasetFrom: 'Time|Value one|0|1 two|1|1 three|2|3 four|3|1' named: '' usingLabels: true.
	self assert: self controller datasetCount  equals: 1.  
	self assert: (self controller datasets at: 1) equals: SWDataTest createSeeded4.
	self flag: #fishy "schöner machen" 