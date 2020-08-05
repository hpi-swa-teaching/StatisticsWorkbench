instance creation
open

	| data |

	data := SWDataUnlabeled fromYValues: {22 . 110 . 64 . 211 . 35}.   
	data setAllDimensionNames: #('City' 'PopulationInThousands').
	
	^ (SWDiagram new visualize: data with: SWLineChart create) openInWindow
