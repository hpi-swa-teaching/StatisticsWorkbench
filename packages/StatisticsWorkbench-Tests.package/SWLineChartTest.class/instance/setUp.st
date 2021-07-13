testing
setUp 

	super setUp.
	
	self 
		data: SWDataTest createSeededRandom;
		lineChart: SWLineChart new;
		diagram: (SWDiagram new visualize: self data with: self lineChart).
		
	self diagram centerAxes