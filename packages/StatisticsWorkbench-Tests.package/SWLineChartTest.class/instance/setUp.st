testing
setUp 

	super setUp.
	self 
		data: SWDataTest createSeededRandom;
		lineChart: SWLineChart new;
		diagram: (SWDiagram new visualizeCenteredAxes: self data with: self lineChart)
