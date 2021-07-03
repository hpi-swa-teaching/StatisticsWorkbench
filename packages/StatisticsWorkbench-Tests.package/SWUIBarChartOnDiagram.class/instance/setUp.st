testing
setUp 

	super setUp.

	self 
		data: SWDataStub createSeeded;
		barChart: SWBarChart new;
		diagram: (SWDiagram new visualize: self data with: self barChart).
