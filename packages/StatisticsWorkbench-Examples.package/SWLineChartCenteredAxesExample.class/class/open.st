as yet unclassified
open

	| data graph window |
	
	data := SWDataUnlabeled create     
		add: #(-2 0);
		add: #(-10 10);
		add: #(8 -3); 
		add: #(-20 3);
		add: #(-16 4);
		add: #(5 -17);
		yourself.
		
	graph := (SWDiagram new visualizeCenteredAxes: data with: SWLineChart create).
	window := graph openInWindow.
	
	^ window