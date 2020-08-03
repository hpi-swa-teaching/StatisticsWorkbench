instance creation
fromDatapoints: aCollectionOfDatapoints withDimensionNames: aCollectionOfDimensionNames

	"Datapoints can be #(y), #(y label), #(x y) or (x y label)"

	^ (self rows: aCollectionOfDatapoints size columns: aCollectionOfDimensionNames size contents: aCollectionOfDatapoints flatten) dimensionNames: aCollectionOfDimensionNames
