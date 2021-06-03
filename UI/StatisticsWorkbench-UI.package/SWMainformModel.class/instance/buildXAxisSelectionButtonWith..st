building
buildXAxisSelectionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new 
		model: self;
		changeLabelWhen: #setXAxisColumn;
		label: #xAxisLabel;
		action: #onXAxisButtonClick;
		frame: (0.5@0.2 corner: 1@0.4)
		yourself