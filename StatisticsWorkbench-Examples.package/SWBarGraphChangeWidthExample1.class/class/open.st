as yet unclassified
open

	|data graph1 window|
	
	data := SWData create     
		add: #(1 22);
		add: #(2 110);
		add: #(3 64); 
		add: #(4 211);
		add: #(5 35);
		yourself.
		
	
	
	graph1 := (SWDiagram new visualize: data with: SWBarGraph create).
	window := graph1  openInWindow.
	(graph1 charts at: 1) barWidth: 40.
	
	^window