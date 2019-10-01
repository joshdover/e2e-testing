@vsphere
Feature: As a Metricbeat developer I want to check that the vSphere module works as expected

Scenario Outline: Check module is sending metrics to Elasticsearch
  Given vSphere "<vsphere_version>" is running for metricbeat "<metricbeat_version>"
    And metricbeat "<metricbeat_version>" is installed and configured for vSphere module
  Then there are no errors in the index
Examples:
| vsphere_version | metricbeat_version |
| latest  | 7.3.0 |
| latest  | 8.0.0-SNAPSHOT |
