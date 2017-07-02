tests
testDeleteLegend
| axis |
	
	axis := SWAxis create.
	axis setLegend: 'Test123'.
	axis deleteLegend.
	self assert: [axis legend  = nil].