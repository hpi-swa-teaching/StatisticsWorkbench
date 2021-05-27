building
buildWith: aBuilder 

		^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Column Selection';
		extent: self extent;
		children:{
			self buildColumnSelectionWith: aBuilder.
		};
		yourself)