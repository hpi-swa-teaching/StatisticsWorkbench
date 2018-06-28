accessing
updateChosenDataset: aDatasetIdentificationNumber named: aName
"Methode ist für den Namen des Diagrammes notwendig"

	self chosenDatasetIndex: aDatasetIdentificationNumber.
	self nameOfChosenDataset: aName.
	self view updateDatasetDisplay: (self chosenDataset dataToString).