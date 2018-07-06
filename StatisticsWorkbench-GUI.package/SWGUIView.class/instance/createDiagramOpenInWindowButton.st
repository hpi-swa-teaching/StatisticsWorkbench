creation
createDiagramOpenInWindowButton
	
	^ (PHButton label: 'Create diagram in window') when: #clicked send: #openDiagramInWindow to: self controller