building
buildVisualizeButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new 
		model: self;
		label: 'Visualize!';
		action: #onVisualizeButtonClicked;
		frame: (0@0.8 corner: 1@1);
		yourself