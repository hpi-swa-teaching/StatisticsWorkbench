instance creation
fromDataPartition: anAssociation xAxis: aString yAxis: anotherString
	
	^ (self fromNamedColumns: anAssociation value xAxis: aString yAxis: anotherString) 
			dataName: anAssociation key.
