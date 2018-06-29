creation
addDimensionDropdown: aButton
	| dropdown |
	
	dropdown := PHDropdown new.
	dropdown
		add: ((PHDropdownItem label: 'x') when: #clicked send: #updateChosenDimension: to: self controller with: #x;
															when: #clicked send: #text: to: aButton with: #x);
		add: ((PHDropdownItem label: 'y') when: #clicked send: #updateChosenDimension: to: self controller with: #y;
															when: #clicked send: #text: to: aButton with: #y);
		attachTo: aButton