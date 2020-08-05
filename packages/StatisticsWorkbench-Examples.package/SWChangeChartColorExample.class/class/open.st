instance creation
open

	| graph |
		
	graph := (SWDiagram new visualize: self data with: SWBarChart create).

	graph chartsColor: Color green.
	graph axisColor: Color red.	
	
	^ graph openInWindow
