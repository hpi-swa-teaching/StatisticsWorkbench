accessing
exampledatasetName
	"We increase the datasecount by one, because at this point the dataset is not yet created but we start counting at 1"
	
	^'Dataset', (self controller datasetCount +1), ' (example)'
