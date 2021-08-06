event-handling
onYAxisButtonClick

	self isNewFileChosen
		ifTrue: [self parseData].
	self setYAxisColumn: (UIManager default chooseFrom: self columns)