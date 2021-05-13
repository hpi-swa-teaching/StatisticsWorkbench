event-handling
onVisualizeButtonClicked 
	
	(self isNewFileChosen) ifTrue: [
		self parseData.
	].
	self chartsToVisualize do:[:each|
		(SWDiagram new visualize: self parsedData with: each create) openInWindow.
		]. 