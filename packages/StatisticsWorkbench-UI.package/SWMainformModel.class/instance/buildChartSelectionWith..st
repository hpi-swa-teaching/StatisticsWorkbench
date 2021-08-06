building
buildChartSelectionWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #getCharts;
		getSelectionList: #isSelected:;
		setSelectionList: #chart:setSelected:;
		frame: (0@0.4 corner: 0.5@0.8);
		yourself