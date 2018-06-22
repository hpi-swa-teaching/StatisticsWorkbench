creation
addChartTypeDropdown: aButton
	| dropdown |
	
	dropdown := PHDropdown new.
	SWChart allSubclassesDo: [:each |
			dropdown add: ((PHDropdownItem label: each name)
				when: #clicked send: #updateChosenChartType: to: self controller with: each name;
				when: #clicked send: #text: to: aButton with: each name)].
	dropdown attachTo: aButton