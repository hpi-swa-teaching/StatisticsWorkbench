event-handling
visualize

	(self currentFile = self parsedFile)ifFalse: [
		self parseData.
	].
	(SWDiagram new visualize: self parsedData with: self selectedDiagram create) openInWindow.
	self parsedFile: self stream name.