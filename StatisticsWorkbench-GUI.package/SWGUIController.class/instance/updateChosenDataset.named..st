accessing
updateChosenDataset: aDatasetIdentificationNumber named: aName

	self chosenDatasetIndex: aDatasetIdentificationNumber.
	self nameOfChosenDataset: aName.
	self view updateDatasetDisplay: (self chosenDataset asString)