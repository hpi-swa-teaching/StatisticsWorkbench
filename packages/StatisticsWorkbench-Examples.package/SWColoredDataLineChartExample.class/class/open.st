instance creation
open

	| data data2 |
	
	data := SWDataUnlabeled fromXValues: {-2 . -10 . 8 . -20 . -16 . 5} versusYValues: {0 . 10 . -3 . 3 . 4 . -17}.
	data dataColor: Color bubblegum.
	data2 := SWDataUnlabeled fromXValues: {13 . 14 . -9 . 20 . -15 . 2} versusYValues: {0 . 10 . -3 . 3 . 4 . -17}.
	data2 dataColor: Color orange.
	
	^ (SWDiagram new visualize: data and: data2 with: SWLineChart create and: SWLineChart create) openInWindow
