creation
createLowerPage
	
	^ self createDefaultPage
		vertical: false;
		add: self createChartTypeDropdown;
		add: self createDiagramOpenInWindowButton;
		add: self createDiagramOpenInWorldButton;
		yourself