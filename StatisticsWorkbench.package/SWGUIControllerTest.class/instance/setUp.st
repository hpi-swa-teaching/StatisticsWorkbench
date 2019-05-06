testing
setUp 

	super setUp. 
	self 
		controller: SWGUIController new; 
		logString: ''. 
	self controller view: self. 
	