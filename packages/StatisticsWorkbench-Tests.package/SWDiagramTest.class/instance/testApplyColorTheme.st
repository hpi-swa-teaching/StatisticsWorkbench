testing
testApplyColorTheme
		
	self diagramLineChart applyColorTheme: SWDarkTheme new.
	self assert: [self diagramLineChart color = SWDarkTheme backgroundColor].
	self assert: [self diagramLineChart coordinateSystem xAxis color = SWDarkTheme axisColor]
