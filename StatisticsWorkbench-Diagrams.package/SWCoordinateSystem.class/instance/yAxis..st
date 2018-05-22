accessing
yAxis: anObject

	yAxis removeDependent: self.
	yAxis := anObject.
	yAxis addDependent: self