as yet unclassified
createSeeded3

	|tempData|
	self flag: #fishy.  
	" don't change! Multiple unit tests relying on that data "  
	
	tempData := SWData create     
		add: #(0 1);
		add: #(1 1);
		add: #(1 3); 
		add: #(3 0);
		yourself.
		
	tempData dimensionNames: #('Time' 'Value').
	
	^tempData