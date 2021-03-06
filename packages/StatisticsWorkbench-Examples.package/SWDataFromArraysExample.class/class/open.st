instance creation
open

	| data |
	
	data := SWDataLabeled create     
		add: #(1 22);
		add: #(2 110);
		add: #(3 64); 
		add: #(4 211);
		add: #(5 35);
		yourself.
	
	data setAllDimensionNames: #('City' 'PopulationInThousands').
	data setLabels: {'Apolda' . 'Jena' . 'Weimar' . 'Erfurt' . 'Suhl'}.
	
	^ (SWDiagram new visualize: data with: SWBarChart create) openInWindow

