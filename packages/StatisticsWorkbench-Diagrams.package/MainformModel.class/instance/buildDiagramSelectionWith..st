building
buildDiagramSelectionWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
			model: self;
			list: #getCharts;
			getSelectionList: #isSelected:;
			setSelectionList: #diagrams:setSelected:;
			frame: (LayoutFrame new 
				topFraction: 0.4;
				bottomFraction: 0.8;
				leftFraction: 0;
				rightFraction: 1
				yourself);
			yourself