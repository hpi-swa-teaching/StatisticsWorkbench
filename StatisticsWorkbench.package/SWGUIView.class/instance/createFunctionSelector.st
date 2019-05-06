creation
createFunctionSelector

	^ self createDefaultPage 
		vertical: false;
		add: self createDimensionDropdown;
		add: self createMathFunctionsDropdown;
		yourself