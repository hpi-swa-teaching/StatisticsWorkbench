as yet unclassified
createSeeded3
	self flag: #fishy.  
	" don't change! Multiple unit tests relying on that data "  
	
	^ SWData create     
		add: #(0 1);
		add: #(1 1);
		add: #(1 3); 
		add: #(3 0);
		dimensionNameAt: 1 put: 'Time';
		dimensionNameAt: 2 put: 'Value';
		yourself