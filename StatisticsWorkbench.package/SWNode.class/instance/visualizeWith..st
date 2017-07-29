geometry
visualizeWith: aChart

	self output class = SWData
		ifTrue: [ ^ SWDiagram new 
												visualize: self output with: aChart; 
												yourself ] 
		ifFalse: [ ^ self output ] 