accessing
updateChoosenDataset: aDatasetIdentificationNumber

	self choosenDataset: aDatasetIdentificationNumber.
	self view updateDatasetDisplay: ((self datasets at: aDatasetIdentificationNumber) dataToString).
	