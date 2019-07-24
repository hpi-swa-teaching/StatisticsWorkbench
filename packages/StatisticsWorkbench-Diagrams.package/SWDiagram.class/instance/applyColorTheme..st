visualization
applyColorTheme: aColorTheme

	self colorTheme: aColorTheme.
	self color: aColorTheme class backgroundColor.
	self updateColors.
	self updateCharts