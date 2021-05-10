building
buildDiagramSelectionWith: aBuilder

	^ aBuilder pluggableListSpec new
			model: self;
			list: #getCharts;
			getSelected:#selectedDiagram;
			setSelected:#selectedDiagram:;
			frame: (LayoutFrame new 
				topFraction: 0.4;
				bottomFraction: 0.8;
				leftFraction: 0;
				rightFraction: 1
				yourself);
			yourself