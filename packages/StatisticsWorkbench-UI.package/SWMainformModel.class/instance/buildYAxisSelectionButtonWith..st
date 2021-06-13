building
buildYAxisSelectionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new 
		model: self;
		changeLabelWhen: #setYAxisColumn;
		label: #yAxisLabel;
		action: #onYAxisButtonClick;
		frame: (0.5@0.4 corner: 1@0.6)
		yourself