accessing
xAxis: anObject

	xAxis removeDependent: self.
	xAxis := anObject.
	xAxis addDependent: self