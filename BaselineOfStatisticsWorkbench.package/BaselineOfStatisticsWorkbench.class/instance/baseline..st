as yet unclassified
baseline: spec
	<baseline>
	spec for: #common do: [
		spec baseline: 'Squot' with: [spec loads: #('default');
							 repository: 'github://hpi-swa/squot:master/src'].

		spec
			package: 'StatisticsWorkbench-Core' with: [spec requires: #('Squot')];
			package: 'StatisticsWorkbench-GUI' with: [spec requires: #('StatisticsWorkbench-Core')];
			package: 'StatisticsWorkbench-Tests' with: [spec requires: #('default')];
			package: 'StatisticsWorkbench-Exceptions' with: [spec requires: #('Squot')];
			group: 'default' with: #('StatisticsWorkbench-Core' 'StatisticsWorkbench-GUI' 'StatisticsWorkbench-Exceptions');
			group: 'tests' with: #('StatisticsWorkbench-Tests')]