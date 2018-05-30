creation
createDiagram

	(self chosenChartType isNil)
		ifTrue: [SWInvalidArgumentError signal: 'Chart-Type must be selected.']
		ifFalse: [(self creationOfDiagramTypes at: self chosenChartType) value openInWindow]