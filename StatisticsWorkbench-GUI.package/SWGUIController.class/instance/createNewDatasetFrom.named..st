accessing
createNewDatasetFrom: aText named: aName "aName wird einfach wieder an das Frontend durchgereicht wollte aber dabei sichergehen, dass das Dataset auch wirklich erstellt wird"
	
	"evtl. ein Altert adden z.B.'created Dataset 2'  "
	self flag: #addDimensionOption.
	self datasets addLast: (SWData fromString: aText ofDataDimension: 2). 
	self view createDatasetDropdownItem: self datasetCount named: aName.
	self datasetCount: self datasetCount + 1.
	
	
	
	
