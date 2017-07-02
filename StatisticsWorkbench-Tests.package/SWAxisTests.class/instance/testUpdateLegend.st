tests
testUpdateLegend
	| axis |
	
	axis := SWAxis create.
	axis setLegend: 'Test123'.
	self assert: [axis legend contents = 'Test123'].
	axis setLegend: 'Testxyz'.
	self assert: [axis getLegend  = 'Testxyz'].
	