accessing
data: anObject
	
	data removeDependent: self.
	data := anObject.
	data addDependent: self.
	self update.
	self changed
