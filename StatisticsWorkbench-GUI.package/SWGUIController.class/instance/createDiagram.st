creation
createDiagram

	(self datasets isEmpty)
		ifTrue: [SWInvalidArgumentError signal: 'Dataset must be created.'].
		
	(self chosenChartType isNil)
		ifTrue: [SWInvalidArgumentError signal: 'Chart-Type must be selected.'].
	
	(SWDiagram new visualize: self chosenDataset with: self chartFromChosenChartType) openInWindowLabeled: self nameOfChosenDataset