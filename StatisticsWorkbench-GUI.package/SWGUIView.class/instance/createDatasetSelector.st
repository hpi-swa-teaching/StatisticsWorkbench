creation
createDatasetSelector

	^ PHPage new
		expand: true;
		vertical: true;
		add: self createDatasetDropdown;
		add: self createDatasetDisplay;
		withLayout;
		addStyleClass: #withPadding;
		yourself