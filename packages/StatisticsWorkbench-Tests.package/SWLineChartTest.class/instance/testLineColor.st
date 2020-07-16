testing
testLineColor

	self diagram lineChartColor: Color bubblegum.
	
	self assert: self lineChart lineColor equals: Color bubblegum.
