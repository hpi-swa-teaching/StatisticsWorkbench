as yet unclassified
createWithCollection: aCollection width: aWidth at: aPos 

	^(SWBarchart new)
	valueCollection: aCollection;
	barWidth: aWidth;
	AxisPosition:aPos;
	updateChart.
	
	