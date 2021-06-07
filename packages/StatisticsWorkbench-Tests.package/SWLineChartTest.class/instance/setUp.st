testing
setUp 

	super setUp.
	
	self world: ((PasteUpMorph newWorldForProject: nil)
		extent: 1000@1000;
		yourself).
	"squeak 5.2 for some reason needs to be told to change the viewbox of world to its own bounds"
	self world viewBox: self world bounds.
	
	self 
		hand: HandMorphForEventTests new;
		data: SWDataTest createSeededRandom;
		lineChart: SWLineChart new;
		diagram: (SWDiagram new visualize: self data with: self lineChart).
		
	self diagram centerAxes.

	self world
		removeHand: self world firstHand; "the default hand"
		addHand: self hand