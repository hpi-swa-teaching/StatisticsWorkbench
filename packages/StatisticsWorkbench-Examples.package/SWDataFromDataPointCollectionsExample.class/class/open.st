as yet unclassified
open

	| labeledData unlabeledData graph |

	labeledData := #(#(0 1 'one') #(1 1 'two') #(2 3 'three') #(3 1 'four')).
	labeledData := SWDataLabeled fromDataPointCollections: labeledData.
		
	unlabeledData := #(#(0 1) #(1 1) #(1 3) #(3 0)).
	unlabeledData := SWDataUnlabeled fromDataPointCollections: unlabeledData.
	
	graph := (SWDiagram new visualize: labeledData and: unlabeledData with: SWLineChart create and: SWLineChart create).
	graph openInWindow
