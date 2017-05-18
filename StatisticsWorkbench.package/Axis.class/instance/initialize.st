as yet unclassified
initialize 
|endpoint|
	super initialize.
	endpoint := self class defaultOrigin + (self class defaultLength @ 0).
	self initializeDefaults.
	"self orientation = #vertical ifTrue:[endpoint := self class defaultOrigin -  (0@ self class defaultLength)]."
	(self vertices: (Array with: self class defaultOrigin with: endpoint) color: self class defaultColor borderWidth: 1 borderColor: self class defaultColor) makeForwardArrow openInWorld.
	self drawSteps.
	