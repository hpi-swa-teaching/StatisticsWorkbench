creation
createMathFunctionsDropdown
	| dropdownButton |
	
	dropdownButton := PHButton label: 'Analyse Data' iconSuffix: #iconCaret_down.
	self addMathFunctionDropdown: dropdownButton.
	^ dropdownButton