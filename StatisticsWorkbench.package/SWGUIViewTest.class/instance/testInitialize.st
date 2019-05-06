testing
testInitialize 
	| view |
	
	view := SWGUIView new. 
	self  
		assert: view controller notNil; 
		assert: view isMorph
	
	
		