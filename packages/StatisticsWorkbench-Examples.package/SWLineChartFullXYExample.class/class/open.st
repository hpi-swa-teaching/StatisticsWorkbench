instance creation
open

	| data |
	
	data := SWDataUnlabeled fromXValues: {-2 . -10 . 8 . -20 . -16 . 5} versusYValues: {0 . 10 . -3 . 3 . 4 . -17}.
	
	^ (SWDiagram new visualize: data with: SWLineChart create) openInWindow
