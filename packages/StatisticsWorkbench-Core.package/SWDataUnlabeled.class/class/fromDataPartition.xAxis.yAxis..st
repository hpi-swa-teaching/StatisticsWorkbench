instance creation
fromDataPartition: anAssociation xAxis: aString yAxis: anotherString
	
	^ (self fromNamedColumns: anAssociation value xValues: aString yValues: anotherString) 
			dataName: anAssociation key
