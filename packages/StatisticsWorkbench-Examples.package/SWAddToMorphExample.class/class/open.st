as yet unclassified
open

	| container data graph1 graph2 |
	
	container := (Morph newBounds:((0 @ 0) corner: (950 @ 500))) openInWorld.
	
	data := SWDataUnlabeled create     
		add: #(1 22);
		add: #(2 110);
		add: #(3 64); 
		add: #(4 211);
		add: #(5 35);
		yourself.
	
	graph1 := (SWDiagram new visualize: data with: SWBarGraph create).
	graph2 := (SWDiagram new visualize: data with: SWLineChart create).
	
	container addMorph: graph1.
	container addMorph: graph2.
	graph1 position: (container position + (10 @ 10)).
	graph2 position: (container position + ((graph1 width + 20) @ 10)).
	
	^ container
