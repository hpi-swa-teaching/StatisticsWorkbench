as yet unclassified
open
	| data graph window |
	
	data := SWDataUnlabeled create     
		add: #(1 22);
		add: #(2 110);
		add: #(3 64); 
		add: #(4 211);
		add: #(5 35);
		yourself.
		
	graph := (SWDiagram new visualize: data with: SWBarGraph create).
	window := graph openInWindow.
	(graph charts at: 1) barWidth: 40.
	
	^ window