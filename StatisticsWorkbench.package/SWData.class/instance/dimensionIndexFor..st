accessing
dimensionIndexFor: aSymbol

	^ dimensionIndices at: aSymbol ifAbsent: [ SWInvalidDimensionError signal: 'Only two dimensional data sets are allowed' ]