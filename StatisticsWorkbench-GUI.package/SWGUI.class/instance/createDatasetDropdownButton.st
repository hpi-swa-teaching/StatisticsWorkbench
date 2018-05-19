as yet unclassified
createDatasetDropdownButton

	| dropdownButton |
	
	dropdownButton := PHButton label: 'dataset' iconSuffix: #iconCaret_down.
	dropdownButton
		color: Color gray.	
	self addDatasetDropdown: dropdownButton.
			
	^dropdownButton