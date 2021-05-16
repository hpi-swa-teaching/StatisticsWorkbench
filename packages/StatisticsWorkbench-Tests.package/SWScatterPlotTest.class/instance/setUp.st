testing
setUp

	super setUp.
	
	self world: ((PasteUpMorph newWorldForProject: nil)
		extent: 1000@1000;
		yourself).

	self 
		hand: HandMorphForEventTests new;
		data: SWDataTest createSeeded;
		scatterPlot: SWScatterPlot new;
		diagram: (SWDiagram new visualize: self data with: self scatterPlot).

	self world
		removeHand: self world firstHand; "the default hand"
		addHand: self hand