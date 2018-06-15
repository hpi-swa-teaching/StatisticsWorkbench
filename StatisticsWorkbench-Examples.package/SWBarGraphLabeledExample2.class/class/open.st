as yet unclassified
open

	|data|
	
	data := SWData create     
		add: #(1 22);
		add: #(2 110);
		add: #(3 64); 
		add: #(4 211);
		add: #(5 35);
		yourself.
		
	data setAllDimensionNames: #('City' 'PopulationInThousand').
	
	(data at: 1) labelName: 'Apolda'.
	(data at: 2) labelName: 'Jena'.
	(data at: 3) labelName: 'Weimar'.
	(data at: 4) labelName: 'Erfurt'.
	(data at: 5) labelName: 'Suhl'.
	
	^(SWDiagram new visualize: data with: SWBarGraph create) openInWindow