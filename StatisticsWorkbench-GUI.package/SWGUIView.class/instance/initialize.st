initialization
initialize 

	super initialize.
	self flag: #swgui. "extent?"
	self
		extent: SWGUIView size; 
		controller: (SWGUIController new view: self); 
		expand: true; 
		add: self createMainPage; 
		withLayout