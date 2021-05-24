building
buildColumnSelectionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new 
		model: self;
		changeLabelWhen: #setXAxis;
		label: #xAxis;
		action: #onColumnSelectionButtonClick;
		frame: (0.5@0.2 corner: 1@0.4)
		yourself