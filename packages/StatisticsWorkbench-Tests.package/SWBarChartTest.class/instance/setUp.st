testing
setUp 

	super setUp.
	hand := HandMorphForEventTests new.
	self 
		hand: HandMorphForEventTests new;
		data: SWDataTest createSeeded;
		barChart: SWBarChart new;
		diagram: (SWDiagram new visualize: self data with: self barChart)