accessing
plot: aSWDataUnlabeled
	| graph window |
	graph := (SWDiagram new visualize: aSWDataUnlabeled with: SWLineChart create).
	window := graph openInWindow.
	
	^ window