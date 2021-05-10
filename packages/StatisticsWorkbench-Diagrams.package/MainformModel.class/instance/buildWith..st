building
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Statistics Workbench';
		extent: 250@200;
		children:{
			self buildDiagramSelectionWith: aBuilder.
			self buildCsvFileSelectionWith: aBuilder.
			self buildVisualizeButtonWith: aBuilder.
			self buildDelimiterInputFieldWith: aBuilder.
			self buildEscapeCharacterInputFieldWith: aBuilder. 
		};
		yourself)