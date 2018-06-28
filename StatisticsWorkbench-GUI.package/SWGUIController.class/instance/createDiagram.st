creation
createDiagram

	self checkIfADatasetExists.
		
	(self chosenChartType isNil)
		ifTrue: [SWInvalidArgumentError signal: 'Chart-Type must be selected.'].
		
	(self creationOfDiagramTypes at: self chosenChartType) value openInWindowLabeled: self nameOfChosenDataset