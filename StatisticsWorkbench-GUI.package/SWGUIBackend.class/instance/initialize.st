accessing
initialize 

	super initialize. 
	self datasets: OrderedCollection new. 
	self choosenDiagramType: #BarGraph. "just an default Vaulue"
	self datasetCount: 1. 