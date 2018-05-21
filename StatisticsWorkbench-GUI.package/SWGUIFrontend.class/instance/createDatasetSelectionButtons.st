as yet unclassified
createDatasetSelectionButtons
"refresh muss eigentlich nicht über eine Variable gelöst werden für zukünftige änderungen aber ganz gut"
	| refreshButton newButton  |
	
	refreshButton := PHButton label: 'Refresh'.
	newButton := (PHButton label: 'new')
						when: #clicked send: #showNewDatasetDialog to: self;
						yourself. 
						
	^PHPage new
		expand: true;
		vertical: false;
		addStyleClass: #withPadding;
		add: refreshButton;
		add: newButton;
		withLayout;
		yourself.  