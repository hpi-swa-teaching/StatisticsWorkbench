as yet unclassified
createDiagrammDropdown
	| dropdownButton |
	
	dropdownButton := PHButton label: 'Diagram' iconSuffix: #iconCaret_down.
	dropdownButton color: Color gray.	
	self addDiagrammDropdown: dropdownButton.
			
	^ dropdownButton