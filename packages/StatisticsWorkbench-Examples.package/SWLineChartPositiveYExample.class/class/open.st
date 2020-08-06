instance creation
open

	| data |
	
	data := SWDataLabeled fromXValues: {2 . -10 . 8 . -20 . -16 . 5} versusYValues: {0 . 1 . 2 . 3 . 4 . 5}.
	
	^ (SWDiagram new visualize: data with: SWLineChart create) openInWindow
