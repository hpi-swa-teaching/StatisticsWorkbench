building
buildDiagramSelectionWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
			model: self;
			list: #getCharts;
			getSelectionList: #isSelected:;
			setSelectionList: #diagrams:setSelected:;
			frame: (0@0.4 corner: 1@0.8);
			yourself