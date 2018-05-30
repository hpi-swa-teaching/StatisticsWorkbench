initialization
initializeDimensionNamesOfSize: aSize

	1 to: aSize do: [:index | self dimensionNameAt: index put: (Character value: 87 + index) asString]