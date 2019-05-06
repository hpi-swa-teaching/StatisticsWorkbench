creation
createDimensionDropdown
	| dropdownButton |
	
	dropdownButton := PHButton label: 'Select Dimension' iconSuffix: #iconCaret_down.
	self addDimensionDropdown: dropdownButton.
	^ dropdownButton