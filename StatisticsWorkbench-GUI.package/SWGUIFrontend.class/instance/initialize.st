as yet unclassified
initialize 

	super initialize.
	
	self
		extent: SWGUIFrontend size;
		backend: SWGUIBackend new; 
		expand: true.