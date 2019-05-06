creation
createChartTypeDropdown
	| dropdownButton |
	
	dropdownButton := PHButton label: 'Chart-Type' iconSuffix: #iconCaret_down.
	self addChartTypeDropdown: dropdownButton.
	^ dropdownButton