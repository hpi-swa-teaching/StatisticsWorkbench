as yet unclassified
createLowerPage
	| createDiagramButton |
	
	createDiagramButton := (PHButton label: 'Create') when: #clicked send: #createDiagram to: self controller.
	^ PHPage new
		expand: true;
		vertical: true;
		addStyleClass: #withPadding;
		add: (PHPage row
				add: self createChartTypeDropdown;
				add: createDiagramButton);
		add: self createAdvancedComm;
		withLayout;
		yourself. 
	