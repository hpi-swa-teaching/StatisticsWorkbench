as yet unclassified
createWithCollection: aCollection width: aWidth at: aPos 

	^(SWBarGraph new)
	valueCollection: aCollection;
	barWidth: aWidth;
	AxisPosition:aPos;
	update.
	
	