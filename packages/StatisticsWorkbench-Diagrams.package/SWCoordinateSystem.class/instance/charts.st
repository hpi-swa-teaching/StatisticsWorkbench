accessing
charts
	self halt.

	"TODO: make sure this method is only called when self diagram and self diagram charts aren't nil. Then assert this here via:"
	"self assert: self diagram isNil not."
	"self assert: self diagram charts isNil not."
	
	(self diagram isNil)
		ifTrue: [^ OrderedCollection new].
		
	(self diagram charts isNil)
		ifTrue: [^ OrderedCollection new].

	^ self diagram charts
