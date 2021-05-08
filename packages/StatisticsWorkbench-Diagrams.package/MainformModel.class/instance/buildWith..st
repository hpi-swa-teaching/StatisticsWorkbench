as yet unclassified
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Statistics Workbench';
		extent: 500@400;
		children:{
			"self buildCsvPathInputFieldWith: aBuilder."
			"self buildDiagramSelectionWith: aBuilder."
			self buildCsvFileSelectionWith: aBuilder.
			self buildVisualizeButtonWith: aBuilder.
			self buildDelimeterInputFieldWith: aBuilder.
		};
		yourself)