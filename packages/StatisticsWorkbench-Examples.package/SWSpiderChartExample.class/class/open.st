instance creation
open

	| data |
	
	data := SWDataUnlabeled fromXValues: {1 . 2 . 3 . 4 . 5. 6} 
		versusYValues: {78 . 80 . 64 . 13 . 35. 40}.

	^ (SWDiagram new visualize: data with: SWSpiderChart create) extent: 300@400;
			 openInWindow