testing
testIsInvisible 
	
	self assert: self diagramEmpty color = Color transparent.
	self assert: self diagramLineChart color = Color transparent.
	self assert: self diagramBarChart color = Color transparent 