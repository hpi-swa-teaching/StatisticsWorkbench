creation
addMathFunctionDropdown: aButton
	| dropdown |
	
	dropdown := PHDropdown new.
	SWData mathFunctions do: [:each |
			dropdown add: ((PHDropdownItem label: each)
				when: #clicked send: #showAnalysisResultFor: to: self with: each)].
	dropdown attachTo: aButton