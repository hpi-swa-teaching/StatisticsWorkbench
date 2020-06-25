accessing
diagram

	"TODO: make sure this method is only called when diagram and diagram charts aren't nil. Then assert this here via:"
	"self assert: diagram isNil not."
	"self assert: diagram charts isNil not."
	
	(diagram isNil)
		ifTrue: [^ SWDiagram new].
		
	^ diagram
