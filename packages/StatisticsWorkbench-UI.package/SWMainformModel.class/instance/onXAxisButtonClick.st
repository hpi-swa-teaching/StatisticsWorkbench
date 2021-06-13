event-handling
onXAxisButtonClick

	self isNewFileChosen ifTrue:[ self parseData].
	self setXAxisColumn: (UIManager default chooseFrom: self columns)