as yet unclassified
initialize 

	super initialize.
	
	self
		extent: SWGUIView size;
		controller: (SWGUIController new view: self); "evtl. newForView: aView"
		expand: true.