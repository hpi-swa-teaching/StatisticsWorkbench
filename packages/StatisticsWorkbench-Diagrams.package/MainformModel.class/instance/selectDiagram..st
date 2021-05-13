accessing
selectDiagram: aDiagram
	
	self selectedDiagram add: aDiagram.
	self changed: #selectedDiagram.
	self changed: #visualizeButtonEnabled.