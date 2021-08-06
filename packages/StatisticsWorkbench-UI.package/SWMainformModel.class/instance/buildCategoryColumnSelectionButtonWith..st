building
buildCategoryColumnSelectionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new 
		model: self;
		changeLabelWhen: #setCategoryColumn;
		label: #categoryColumnLabel;
		action: #onCategoryColumnButtonClick;
		frame: (0.5@0.6 corner: 1@0.8);
		yourself