creation
createDiagramOpenInWorldButton
	
	^ (PHButton label: 'Create diagram in world') when: #clicked send: #openDiagramInWorld to: self controller