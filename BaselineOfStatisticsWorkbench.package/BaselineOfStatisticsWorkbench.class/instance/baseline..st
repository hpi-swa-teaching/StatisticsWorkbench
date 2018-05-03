as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'StatisticsWorkbench-Exceptions';
				package: 'StatisticsWorkbench-Core' with: [spec requires: #('StatisticsWorkbench-Exceptions')];
				package: 'StatisticsWorkbench-GUI' with: [spec requires: #('StatisticsWorkbench-Core' 'StatisticsWorkbench-Exceptions')];
				package: 'StatisticsWorkbench-Tests' with: [spec requires: #('default')];
				yourself.
			spec
				group: 'default' with: #('StatisticsWorkbench-Core' 'StatisticsWorkbench-GUI' 'StatisticsWorkbench-Exceptions');
				group: 'tests' with: #('StatisticsWorkbench-Tests')];
				yourself