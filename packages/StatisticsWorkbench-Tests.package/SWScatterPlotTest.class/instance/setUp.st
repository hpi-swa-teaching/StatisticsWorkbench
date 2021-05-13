testing
setUp

	super setUp.
	hand := HandMorphForEventTests new.
	self 
		data: SWDataTest createSeeded;
		scatterPlot: SWScatterPlot new;
		diagram: (SWDiagram new visualize: self data with: self scatterPlot)
