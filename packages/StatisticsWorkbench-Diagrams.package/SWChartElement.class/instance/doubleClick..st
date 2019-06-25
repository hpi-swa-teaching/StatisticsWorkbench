accessing
doubleClick: anEvent
	| e |
	e := ToolBuilder build: (ObjectExplorer explore: self).
	e openInHand
