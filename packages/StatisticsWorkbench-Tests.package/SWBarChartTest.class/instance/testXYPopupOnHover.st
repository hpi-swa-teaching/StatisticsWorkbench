testing
testXYPopupOnHover

	| selectedBar submorphsBefore submorphsAfter |
	self diagram openInWorld: self world.
	selectedBar := self barChart bars detect: [:bar | bar vector x = 1 and: bar vector y = 3].
	submorphsBefore := selectedBar submorphs size.
	self hand handleEvent: (self mouseEnter: selectedBar center).
	submorphsAfter := selectedBar submorphs size.
	self assert: selectedBar infoPopup notNil
	