as yet unclassified
open

	| data graph window |
	
	data := SWDataUnlabeled create     
		add: #(0 -2);
		add: #(1 10);
		add: #(2 8); 
		add: #(3 -20);
		add: #(4 2);
		add: #(5 5);
		yourself.
		
	graph := (SWDiagram new visualize: data with: SWLineChart create).
	window := graph openInWindow.
	
	^ window
