creation
createDiagram

	(self chosenDatasetIndex isNil)
		ifTrue: [SWInvalidArgumentError signal: 'Dataset must be selected.'].
		
	(self chosenChartType isNil)
		ifTrue: [SWInvalidArgumentError signal: 'Chart-Type must be selected.']
		ifFalse: [(self creationOfDiagramTypes at: self chosenChartType) value openInWindowLabeled: self nameOfChosenDataset]