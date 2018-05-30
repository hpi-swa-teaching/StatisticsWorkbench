accessing
createDiagram
	(choosenDiagramType isNil)
		ifTrue: [SWInvalidArgumentError signal: 'Diagramtype must be selected.']
		ifFalse: [(self creationOfDiagramTypes at: self choosenDiagramType) value openInWindow]