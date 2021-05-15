testing
setUp 

	super setUp.
	
	self world: ((PasteUpMorph newWorldForProject: nil)
		extent: 1000@1000;
		yourself).
		
	self hand: HandMorphForEventTests new.
	
	self world
		removeHand: self world firstHand; "the default hand"
		addHand: self hand.

	self 
		data: SWDataTest createSeeded;
		barChart: SWBarChart new;
		diagram: (SWDiagram new visualize: self data with: self barChart)