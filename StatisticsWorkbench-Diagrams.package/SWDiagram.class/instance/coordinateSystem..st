accessing
coordinateSystem: anObject
	
	coordinateSystem removeDependent: self.
	coordinateSystem := anObject.
	anObject addDependent: self