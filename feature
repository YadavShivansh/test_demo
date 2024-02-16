
Feature:ZigWheels 

@Regression
Scenario: Handling Alert
	Given: Homepage of ZigWheels
	When  User got Alert for allow Notification 
	Then choose one "Allow" or "Block"

@Regression
Scenario: Hover on Used Cars 

	Given: Homepage of ZigWheels
	When user Hover on Used Cars 
	Then Dropdown is displayed 
	
	When User Cliks on the search Bar
	Then Options dropdown is present
	
@Regresion
Scenario: Validations of New Bikes Page
	
	Given: User is nevigated to the NewBikes page 
	When User scroll  down
	Then  Top New Bike Brands in India logos is  displayed
	And New Bike News section should be displayed
	
	When user clicks on Bike under 60000 budget 
	Then Bikes price under 60000 is displayed 
	And search Bikes By Logo is displayed
	
@regresion
Scenario: Validations of Used Cars Page

	Given: User is neviaged to Used cars page 
	When User scroll down
	Then Search bar for search using car model is displayed 
	
	When User Enters  valid car model name 
	Then  Dropdown of Cars list  is displayed 
	
	When User Enters Invalid Car model 
	Then  Nothing is displayed 
	
	When user clikcs on the <Foram>
	
	

	
	




Feature:ZigWheels


@Sanity	
Scenario: Fundamental Elements Validation
	Given: Homepage of the ZigWheels
	Then ZigWheels should be displayed 
	And Searchbox should be displayed
	And Login/signup button should br displayed 
	And Page should be scrolled 


@Smoke 
Scenario: Varification of NewBikes DropDown
	Given: Homepage of zigWheels
	When User hover on New Bikes  Dropdown
	Then Dropdown options Should be displayed 
	
	
	When user clicks on the Upcoming Bikes 
	Then user should be nevigated to the upcoming bikes page 
	
	When user  manipulated to the manufacturer dropdown
	Then user select "Honda".
	Then user displays list of Honda Bike


@Smoke
Scenario: Used Cars Actions 
	Given User nevigated to the ZigWheels page 
	Then  User cliked on  Used Cars
	Then 	Entered Location in Location filter 
	Then displays the list of popular Brands
	
	When User selects maruti  brands
	Then displays cars list 
	
	When User selects any   brands
	Then displays cars list  

@Smoke
Scenario: Login using Google option 

	Given Homepage of zigWheels
	When user clicks on Login button
	Then select google as login 
	
	When User enters Valid email
	Then click the Next button
	Then enter the Password
	
	When User enter Invalid email
	When  cliks  the next button
	Then display the error message 
	

	 
	
	
	

	
	 



	
	
	
	
	




	
	
	

