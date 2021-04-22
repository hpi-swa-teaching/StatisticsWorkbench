accessing
diagram

	(diagram isNil)
		ifTrue: [^ SWDiagram new].
		
	^ diagram
