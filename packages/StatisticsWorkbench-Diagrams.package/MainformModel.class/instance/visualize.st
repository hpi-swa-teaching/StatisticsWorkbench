event-handling
visualize

	|data|
	Transcript show: self delimeter.
	
	data :=  SWDataUnlabeled fromCSVStream: self stream delimeter: self delimeter escapeWith: self escapeCharacter.

	(SWDiagram new visualize: data with: self selectedDiagram create) openInWindow.
	
	