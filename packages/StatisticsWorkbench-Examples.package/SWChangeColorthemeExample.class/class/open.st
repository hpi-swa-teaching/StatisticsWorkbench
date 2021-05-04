instance creation
open 
	
	| diagram data |
	
	data := SWDataLabeled fromXValues: {2 . -10 . 8 . -20 . -16 . 5} versusYValues: {0 . 1 . 2 . 3 . 4 . 5}.

	diagram := SWDiagram new visualize: data with: SWLineChart create.
	self halt.
	diagram openInWindow.

	3 seconds asDelay wait.
	
	diagram applyColorTheme: SWDarkTheme new.
