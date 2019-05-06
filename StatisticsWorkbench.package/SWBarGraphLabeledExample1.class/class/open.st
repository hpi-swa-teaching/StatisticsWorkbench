as yet unclassified
open
	| data dataString |
	
	dataString := 'City|PopulationInThousands Apolda|1|22 Jena|2|110 Weimar|3|64 Erfurt|4|211 Suhl|5|35'.
	
	data := SWDataLabeled fromString: dataString ofDataDimension: 2.
	
	^ (SWDiagram new visualize: data with: SWBarGraph create) openInWindow