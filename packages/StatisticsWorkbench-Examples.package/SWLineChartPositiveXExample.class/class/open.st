instance creation
open

	| data |
	
	data := SWDataUnlabeled fromXValues: {0 . 1 . 2 . 3 . 4 . 5} versusYValues: {-2 . 10 . 8 . -20 . 2 . 5}.
		
	^ (SWDiagram new visualize: data with: SWLineChart create) openInWindow
