accessing
chosenDatasetContentChanged
	
	(self datasets isEmpty)
		ifTrue: [SWInvalidArgumentError signal: 'Dataset must be created.'].
	self chosenDataset copyFrom: self createDatasetFromDatasetDisplay. 
	self view updateDatasetDisplay: self chosenDataset dataToString