column-selection
setCategoryColumn: aNumber

	self categoryColumn: (self columns at: aNumber).
	self changed: #setCategoryColumn.