#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template

Feature:ZigWheels


@Regression
Scenario: Handling PopUps
	Given: Homepage of ZigWheels
	When Popup for locatoion appears
	Then choose one "Allow" or "Block"


@Sanity	
Scenario: Fundamental Elements Validation
	Given: Homepage of the ZigWheels
	Then ZigWheels should be displayed 
	And Searchbox should be displayed
	And Login/signup button should br displayed 
	And Page should be scrolled 


@Smoke 
Scenario: Varification of NewCars DropDown
	Given: Homepage of zigWheels
	When User hover on New Bikes  Dropdown
	Then Dropdown options Should be displayed 
	
	When user clicks on the "Upcoming Bikes" 
	Then user should be nevigated to the upcoming bikes page 
	
	When user click on "manufacturer" dropdown
	Then user select "Honda".
	
	
	




	
	
	

