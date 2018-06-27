creation
createLowerPage
	
	^ self createDefaultPage
		vertical: false;
		add: self createChartTypeDropdown;
		add: self createDiagramCreationButton;
		yourself