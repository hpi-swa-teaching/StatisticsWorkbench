accessing
createDiagram
	(choosenDiagramType isNil)
		ifTrue: [SWInvalidArgumentError signal: 'Diagramtype must be select.']
		ifFalse: [(self creationOfDiagramTypes at: self choosenDiagramType) value openInWindow]