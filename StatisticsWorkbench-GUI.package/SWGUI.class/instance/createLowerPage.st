as yet unclassified
createLowerPage

	| lowerPage |
	
	lowerPage := PHPage new.
	lowerPage 
		expand: true;
		vertical: true;
		addStyleClass: #withPadding;
		add: (PHPage row
				add: self createDiagrammDropdown;
				add: (PHButton label: 'Create'));
		add: self createAdvancedComm;
		withLayout.
	
	^lowerPage