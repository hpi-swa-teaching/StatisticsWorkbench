as yet unclassified
createFunctionSelector

	| functionSelector |
	
	functionSelector := PHPage new.
	functionSelector
		add: (PHButton label: 'Calculate minimum');
		add: (PHButton label: 'Calculate maximum');
		add: (PHButton label: 'Calculate median').
	
	^functionSelector