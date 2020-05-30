as yet unclassified
open

	| data |
	
	data := SWDataLabeled fromXValues: {1 . 2 . 3 . 4 . 5}  versusYValues: {22 . 110 . 64 . 211 . 35} withLabels: {'Apolda' . 'Jena' . 'Weimar' . 'Erfurt' . 'Suhl'}.   
	data setAllDimensionNames: #('City' 'PopulationInThousands').
	
	^ (SWDiagram new visualize: data with: SWBarGraph create) openInWindow
