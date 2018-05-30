accessing
createDiagram
	(chosenDiagramType isNil)
		ifTrue: [SWInvalidArgumentError signal: 'Diagramtype must be selected.']
		ifFalse: [(self creationOfDiagramTypes at: self chosenDiagramType) value openInWindow]