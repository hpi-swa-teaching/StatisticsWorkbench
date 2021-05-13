testing
setUp

	super setUp.
	self 
		hand: HandMorphForEventTests new;
		data: SWDataTest createSeeded;
		scatterPlot: SWScatterPlot new;
		diagram: (SWDiagram new visualize: self data with: self scatterPlot)
