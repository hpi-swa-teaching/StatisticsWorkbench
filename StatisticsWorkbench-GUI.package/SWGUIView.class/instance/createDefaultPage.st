creation
createDefaultPage

	 ^ PHPage column
		expand: true;
		addStyleClass: #withPadding;
		withLayout;
		yourself