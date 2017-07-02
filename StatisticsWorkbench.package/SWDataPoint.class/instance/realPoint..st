accessing
realPoint: anObject
	realPoint removeDependent: self.
	realPoint := anObject.
	realPoint addDependent: self