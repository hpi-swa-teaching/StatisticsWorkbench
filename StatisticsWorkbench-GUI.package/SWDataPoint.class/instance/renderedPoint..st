accessing
renderedPoint: anObject
	renderedPoint removeDependent: self.
	renderedPoint := anObject.
	renderedPoint addDependent: self
