Feature: Create Application for myApp

Scenario: Application Server Resources

Given the deployment is successful
Then the RG name should be SQL
And RG Location is East US

Scenario: Application Resource
Given RG is Created
Then RG name should be VM
And RG Location is West US
