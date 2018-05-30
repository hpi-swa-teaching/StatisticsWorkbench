accessing
chosenDatasetChanged
	(self datasets at: self choosenDataset) copyFrom: (SWData fromString: (self view datasetDisplay text) ofDataDimension: 2).