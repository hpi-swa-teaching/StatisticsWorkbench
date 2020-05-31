as yet unclassified
open

	| data1 data2 graph window |
	
	data1 := SWDataUnlabeled create     
		add: #(1 22);
		add: #(2 11);
		add: #(3 64); 
		add: #(4 21);
		add: #(5 35);
		yourself.
		
	data2 := data2 := SWDataUnlabeled create     
		add: #(1 3);
		add: #(2 6);
		add: #(3 41); 
		add: #(13 39);
		add: #(9 27);
		yourself.
		
	graph := (SWDiagram new visualize: data1 and: data2 with: SWLineChart create and: SWLineChart create).
	window := graph openInWindow.
	
	^ window
