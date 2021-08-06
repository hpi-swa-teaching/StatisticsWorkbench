building
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Statistics Workbench';
		extent: self defaultWindowExtent;
		children:{
			self buildChartSelectionWith: aBuilder.
			self buildCsvFileSelectionWith: aBuilder.
			self buildVisualizeButtonWith: aBuilder.
			self buildDelimiterInputFieldWith: aBuilder.
			self buildEscapeCharacterInputFieldWith: aBuilder.
			self buildXAxisSelectionButtonWith: aBuilder.
			self buildYAxisSelectionButtonWith: aBuilder.
			self buildCategoryColumnSelectionButtonWith: aBuilder.
		};
		yourself)