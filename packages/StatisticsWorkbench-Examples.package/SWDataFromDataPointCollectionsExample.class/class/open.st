instance creation
open

	| labeledData unlabeledData |

	labeledData := SWDataLabeled fromDataPointCollections: #(#(1 1 'one') #(2 1 'two') #(3 3 'three') #(4 1 'four')).
	
	unlabeledData := SWDataUnlabeled fromDataPointCollections: #(#(0 2) #(1 1) #(2 1) #(3 3) #(4 0)).
	
	^ (SWDiagram new visualize: labeledData and: unlabeledData with: SWBarChart create and: SWLineChart create) openInWindow
