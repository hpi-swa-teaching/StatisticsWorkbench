accessing
specie
	
	self datasets isEmpty
		ifTrue: [SWInvalidArgumentError signal: 'Dataset must be created.'].
	self chosenDataset copyFrom: (self chosenDataset class fromString: (self view datasetDisplay text) ofDataDimension: 2). 
	self view updateDatasetDisplay: self chosenDataset dataToString