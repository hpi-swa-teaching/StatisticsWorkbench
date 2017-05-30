as yet unclassified
baseline: spec
  <baseline>
  spec
    for: #common 
    do: [
      spec
        package: 'StatisticsWorkbench-Core';
        package: 'StatisticsWorkbench-GUI';
        package: 'StatisticsWorkbench-Tests' with: [spec requires: #('default')];
        yourself.
      spec
        group: 'default' with: #('StatisticsWorkbench-Core');
        group: 'default' with: #('StatisticsWorkbench-GUI');
        group: 'tests' with: #('StatisticsWorkbench-Tests')]