as yet unclassified
open

	| labeledData unlabeledData graph |

	labeledData := #(#(1 1 'one') #(2 1 'two') #(3 3 'three') #(4 1 'four')).
	labeledData := SWDataLabeled fromDataPointCollections: labeledData.
		
	unlabeledData := #(#(1 1) #(2 1) #(3 3) #(4 0)).
	unlabeledData := SWDataUnlabeled fromDataPointCollections: unlabeledData.
	
	graph := (SWDiagram new visualize: labeledData and: unlabeledData with: SWLineChart create and: SWLineChart create).
	graph openInWindow
