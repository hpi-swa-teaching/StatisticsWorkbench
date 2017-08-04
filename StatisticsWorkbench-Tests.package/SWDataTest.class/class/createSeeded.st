as yet unclassified
createSeeded  
	
	self flag: #fishy.  
	" don't change! Multiple unit tests relying on that data "  
	
	^ SWData new     
		add: #(0 1);
		add: #(1 1);
		add: #(1 3); 
		add: #(3 0);
		yourself