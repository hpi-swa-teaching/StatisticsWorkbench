testing
setUp 

	super setUp.
	self 
		data: SWDataTest createSeeded;
		lineChart: SWLineChart new;
		diagram: (SWDiagram new visualize: self data with: self lineChart)