creation
createChartTypeDropdown
	| dropdownButton |
	
	dropdownButton := PHButton label: 'Chart-Type' iconSuffix: #iconCaret_down.
	dropdownButton color: Color gray.	
	self addChartTypeDropdown: dropdownButton.
	^ dropdownButton