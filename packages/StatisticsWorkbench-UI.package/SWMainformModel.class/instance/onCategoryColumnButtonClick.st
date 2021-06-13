event-handling
onCategoryColumnButtonClick

	self isNewFileChosen ifTrue:[ self parseData].
	self setCategoryColumn: (UIManager default chooseFrom: self columns)