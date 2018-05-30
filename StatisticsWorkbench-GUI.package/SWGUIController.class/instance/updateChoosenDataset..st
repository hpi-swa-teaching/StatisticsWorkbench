accessing
updateChoosenDataset: aDatasetIdentificationNumber

	self chosenDatasetIndex: aDatasetIdentificationNumber.
	self view updateDatasetDisplay: (self chosenDataset dataToString)