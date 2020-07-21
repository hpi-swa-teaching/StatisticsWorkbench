testing
testColoredData
	
	| coloredData coloredData2 |
	
	coloredData := SWDataTest createSeededRandom.
	coloredData dataColor: Color bubblegum.
	
	coloredData2 := SWDataTest createSeededRandom.
	coloredData2 dataColor: Color orange.
	
	self lineChart data: coloredData.
	self assert: self lineChart lineColor equals: Color bubblegum.
	
	self lineChart data: coloredData2.
	self assert: self lineChart lineColor equals: Color orange.
