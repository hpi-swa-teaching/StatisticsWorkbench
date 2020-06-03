as yet unclassified
open
	| data1 data2 graph window |
	
	data1 := SWDataUnlabeled create     
		add: #(1 22);
		add: #(2 110);
		add: #(3 64); 
		add: #(4 211);
		add: #(5 35);
		yourself.
		
		data2 := SWDataUnlabeled create     
		add: #(2 15);
		add: #(5 19);
		add: #(6 99); 
		add: #(7 321);
		add: #(9 222);
		yourself.


	graph := (SWDiagram new visualize: data1 and: data2 with: SWLineChart create and: SWBarGraph create).
	
	window := graph openInWindow.
	
	^ window