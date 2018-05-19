as yet unclassified
addDiagrammDropdown: aButton

	| dropdown |
	
	dropdown := PHDropdown new.
	dropdown
		add: (PHDropdownItem label: 'Bar Graph');
		add: (PHDropdownItem label: 'Line Chart');
		add: (PHDropdownItem label: 'Pie Chart');
		add: (PHDropdownItem label: 'Scatter Plot');
		attachTo: aButton.