accessing
updateChoosenDataset: aDatasetIdentificationNumber

	self choosenDataset: aDatasetIdentificationNumber.
	self datasetDisplay text: ((self datasets at: aDatasetIdentificationNumber) asString).
	