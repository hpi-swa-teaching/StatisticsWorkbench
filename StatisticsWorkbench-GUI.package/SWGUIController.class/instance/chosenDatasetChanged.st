accessing
chosenDatasetChanged
	self chosenDataset copyFrom: (SWData fromString: (self view datasetDisplay text) ofDataDimension: 2).