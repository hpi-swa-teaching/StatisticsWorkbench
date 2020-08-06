instance creation
open

	| data |
	
	data := SWDataLabeled fromXValues: {1 . 2 . 3 . 4 . 5} versusYValues: {7 . 10 . 3 . 3 . 4}.
	data setLabels: {'Apolda' . 'Jena' . 'Weimar' . 'Erfurt' . 'Suhl'}.
	
	^ (SWDiagram new visualize: data with: SWBarChart create) openInWindow
