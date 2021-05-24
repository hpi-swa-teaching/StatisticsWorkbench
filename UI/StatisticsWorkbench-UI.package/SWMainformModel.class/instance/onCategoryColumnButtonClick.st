event-handling
onCategoryColumnButtonClick

	self isNewFileChosen ifTrue:[ self parseData].
	self childView: (SWColumnSelectionModel openWith: self parsedData keys and: [:column| self setCategoryColumn: column])