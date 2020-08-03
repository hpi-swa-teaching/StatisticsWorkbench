instance creation
fromDatapoints: aCollectionOfDatapoints
	
	^ self fromDatapoints: aCollectionOfDatapoints withDimensionNames: (aCollectionOfDatapoints first collect: [:i | nil]) asArray.
