helper
createSeeded5

	| tempData |
	
	"Don't change! Multiple unit tests relying on that data."  
	
	tempData := SWDataUnlabeled create     
		add: #(1 5);
		add: #(2 10);
		add: #(3 30); 
		add: #(4 100);
		yourself.
		
	tempData setAllDimensionNames: #('Time' 'Value').
	
	^ tempData
