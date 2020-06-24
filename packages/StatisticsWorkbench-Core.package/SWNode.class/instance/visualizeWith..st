geometry
visualizeWith: aChart

	(self output class = SWDataUnlabeled)
		ifTrue: [^ SWDiagram new 
								visualize: self output with: aChart; 
								yourself] 
		ifFalse: [^ self output]
