baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'StatisticsWorkbench-Exceptions';
				package: 'StatisticsWorkbench-Core' with: [spec requires: #('StatisticsWorkbench-Exceptions')];
				package: 'StatisticsWorkbench-Diagrams' with: [spec requires: #('StatisticsWorkbench-Core' 'StatisticsWorkbench-Exceptions')];
				package: 'StatisticsWorkbench-Tests' with: [spec requires: #('default')];
				package: 'StatisticsWorkbench-Examples' with: [spec requires: #('StatisticsWorkbench-Core' 'StatisticsWorkbench-Exceptions' 'StatisticsWorkbench-Diagrams')];
				package: 'StatisticsWorkbench-UI' with: [spec requires: #('StatisticsWorkbench-Core' 'StatisticsWorkbench-Exceptions' 'StatisticsWorkbench-Diagrams')];
				yourself.
			spec
				group: 'default' with: #('StatisticsWorkbench-Core'  'StatisticsWorkbench-Exceptions' 'StatisticsWorkbench-Diagrams' 'StatisticsWorkbench-UI');
				group: 'examples' with: #('default' 'StatisticsWorkbench-Examples');
				group: 'tests' with: #('StatisticsWorkbench-Tests')];
				yourself