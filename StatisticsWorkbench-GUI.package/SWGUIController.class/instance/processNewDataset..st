creation
processNewDataset: aName

	self chosenDatasetIndex: self datasetCount.
	self nameOfChosenDataset: aName.
	self view processNewDataset: self chosenDataset asString withID: self datasetCount named: aName 