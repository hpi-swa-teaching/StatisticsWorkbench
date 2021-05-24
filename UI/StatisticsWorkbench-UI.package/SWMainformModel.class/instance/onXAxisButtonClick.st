event-handling
onXAxisButtonClick

	self isNewFileChosen ifTrue:[ self parseData].
	self childView: (SWColumnSelectionModel openWith: self parsedData keys and: [:column| self setXAxisColumn: column])