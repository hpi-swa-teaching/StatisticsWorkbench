instance creation
open

	| graph |
		
	graph := (SWDiagram new visualize: self data with: SWBarChart create).
	(graph charts first) barWidth: self newBarWidth.
	
	^ graph openInWindow
