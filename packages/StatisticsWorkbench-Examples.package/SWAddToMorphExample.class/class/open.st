instance creation
open

	| container graph1 graph2 |
	
	graph1 := (SWDiagram new visualize: self data with: SWBarChart create).
	graph2 := (SWDiagram new visualize: self data with: SWLineChart create).
	
	container := (Morph newBounds: self containerBounds) openInWorld.
	
	container addMorph: graph1.
	container addMorph: graph2.
	graph1 position: (container position + (self margins @ self margins)).
	graph2 position: (container position + ((graph1 width + self spacing) @ self margins)).
	
	^ container
