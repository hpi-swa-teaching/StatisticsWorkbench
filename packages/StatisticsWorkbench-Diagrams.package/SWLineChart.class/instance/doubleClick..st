adding/removing
doubleClick: anEvent
	| e |
	e := ToolBuilder build: (ObjectExplorer explore: self data).
	e openInHand
