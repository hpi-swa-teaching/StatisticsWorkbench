as yet unclassified
createWith: aDataSet 
	
	^ SWBarGraphNoUpdateMock new 
									color: self defaultColor;
		 							dataset: aDataSet;
							 		yourself