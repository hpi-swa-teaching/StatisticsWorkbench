as yet unclassified
createSeeded4
	|tempData|
	
	"Don't change! Multiple unit tests relying on that data."  
	
	tempData := SWDataLabeled create     
		add: #(0 1);
		add: #(1 1);
		add: #(2 3); 
		add: #(3 1);
		yourself.
		
	tempData setAllDimensionNames: #('Time' 'Value').
	
	(tempData at: 1) labelName: 'one'.
	(tempData at: 2) labelName: 'two'.
	(tempData at: 3) labelName: 'three'.
	(tempData at: 4) labelName: 'four'.
	
	^ tempData