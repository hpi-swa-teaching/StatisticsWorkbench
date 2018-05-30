as yet unclassified
initialize 

	super initialize.
	
	self
		extent: SWGUIView size;
		controller: (SWGUIController new view: self); 
		expand: true; 
		add: self createMainPage; 
		withLayout.