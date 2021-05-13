testing
setUp

	super setUp.
	self 
		hand: HandMorphForEventTests new;
		data: SWDataTest createSeeded5;
		pieChart: SWPieChart create;
		diagram: (SWDiagram new visualize: self data with: self pieChart)