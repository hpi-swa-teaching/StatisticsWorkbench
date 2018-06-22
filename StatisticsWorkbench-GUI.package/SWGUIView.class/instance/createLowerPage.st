creation
createLowerPage
	| diagramCreationButton |
	
	diagramCreationButton := (PHButton label: 'Create') when: #clicked send: #createDiagram to: self controller.
	^ self createDefaultPage
		add: (PHPage row
				add: self createChartTypeDropdown;
				add: diagramCreationButton);
		add: self createAdvancedComm;
		yourself