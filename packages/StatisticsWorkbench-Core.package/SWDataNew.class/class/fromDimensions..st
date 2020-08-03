instance creation
fromDimensions: anOrderedDict

	| datapoints dimensionNames |
	
	datapoints := (1 to: anOrderedDict values size) collect: [:i | anOrderedDict values collect: [:dimension | dimension at: i]].
	dimensionNames := anOrderedDict keys.
	
	^ self fromDatapoints: datapoints withDimensionNames: dimensionNames
