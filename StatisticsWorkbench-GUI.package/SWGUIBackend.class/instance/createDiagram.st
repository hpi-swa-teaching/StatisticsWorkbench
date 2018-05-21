accessing
createDiagram
"guten Fehler werfen wenn nichts ausgewählt ist"
	(self diagrammCreationTypes at: self choosenDiagramType) value openInWindow. 