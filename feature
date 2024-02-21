
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
	

	///Page objects
 public class smoke extends basePage{

	
	public smoke(WebDriver driver) {
		super(driver);
		
	}
	
	
	@FindBy(xpath="//img[@alt[normalize-space()='ZigWheels']]")
	public WebElement logo;
	
	@FindBy(xpath="//input[@id='headerSearch']")
	public WebElement searchbox;
	
	@FindBy(xpath="//div[@id='des_lIcon']")
	public WebElement btn;
	
	
	@FindBy(xpath="//a[normalize-space()='New Bikes']")
	public WebElement newBikesHover;
	
	@FindBy(xpath="//*[@id=\"headerNewNavWrap\"]/nav/div/ul/li[3]/ul/li")
	public WebElement bikedrpDown;
	
	@FindBy(xpath="//*[@id=\"headerNewNavWrap\"]/nav/div/ul/li[3]/ul/li[5]/span")
	public WebElement drpUpcomingBikes;
	
	@FindBy(xpath="//select[@id='makeId']")
	public WebElement manufacturerdrpDown;
	
	
	
	
	
	
	public void cheakLogo()
	{
		logo.isDisplayed();
	}
	
	public void cheakSearchbox()
	{
		searchbox.isDisplayed();
	}
	
	
	public void cheakloginbtn()
	{
		btn.isDisplayed();
	}
	

 //stepdefinition
 public class stepdef1 {

	static HelperClass b=new HelperClass();
	public static WebDriver driver;
	static smoke f1 ;
	
	
	
	@Given("Homepage of the ZigWheels")
	public void homepage_of_the_zig_wheels() {
	  driver=HelperClass.getDriver();
	}

	@Then("ZigWheels logo  should be displayed")
	public void zig_wheels_logo_should_be_displayed() {
		
		f1 = new smoke(driver);
	    f1.cheakLogo();
		
	}

	@Then("Searchbox should be displayed")
	public void searchbox_should_be_displayed() {
		f1 = new smoke(driver);
	   f1.cheakSearchbox();
		
	}

	@Then("Login  button should be displayed")
	public void login_button_should_be_displayed() {
		f1.cheakloginbtn();
	}

	@Then("scrollbar is present")
	public void scrollbar_is_present()
	{
	 
		JavascriptExecutor js = (JavascriptExecutor) driver;
        long documentHeight = (long) js.executeScript("return document.documentElement.scrollHeight;");
        long viewportHeight = (long) js.executeScript("return window.innerHeight;");

        // Check if the document height exceeds the viewport height
        boolean isScrollBarPresent = documentHeight > viewportHeight;

        // Print the result
//        if (isScrollBarPresent) {
//            System.out.println("Scroll bar is present on the webpage.");
//        } else {
//            System.out.println("Scroll bar is not present on the webpage.");
//        }	 
        
        Assert.assertTrue(isScrollBarPresent, "Scroll bar is not present on the webpage.");
        
        
        
    
	}
	
	
	
	@When("User hover on New Bikes  Dropdown")
	public void user_hover_on_new_bikes_dropdown() {
	    
	}

	@Then("Dropdown options Should be displayed")
	public void dropdown_options_should_be_displayed() {
	   
	}

	@When("user clicks on the Upcoming Bikes")
	public void user_clicks_on_the_upcoming_bikes() {
	    
	}

	@Then("user should be nevigated to the upcoming bikes page")
	public void user_should_be_nevigated_to_the_upcoming_bikes_page() {
	   
	}

	@When("user  manipulated to the manufacturer dropdown")
	public void user_manipulated_to_the_manufacturer_dropdown() {
	
	}

	@Then("user select Honda.")
	public void user_select_honda() {
	    
	}

	@Then("It displays list of Honda Bike")
	public void it_displays_list_of_honda_bike() {
	   
	}


}
	
/// refresion page obejcts 
package pageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;

public class regreesion  extends basePage {


	public regreesion(WebDriver driver) {
		super(driver);
	}
	
	
	@FindBy(xpath="//a[normalize-space()='Used Cars']")
	public WebElement usedCar;
	
	@FindBy(xpath="//ul[@class='h-d-dd h-col-1']")
	public WebElement usedCardrpdown;
	
	@FindBy(xpath="//input[@id='headerSearch']")
	public WebElement searchbox;
	
	@FindBy(xpath="//ul[@id='ui-id-1']")
	 public WebElement searchOption;

	
	
	public void hoverUsedcar()
	{
		Actions act = new Actions(driver);
		act.moveToElement(usedCar).perform();
		
	}
	
	public void cheakdrpDown()
	{
		usedCardrpdown.isDisplayed();
	}
	
	public void clickSearch()
	{
		searchbox.click();
	}
	
	public void searchOptions()
	{
		searchOption.isDisplayed();
	}
	
}



///step definition


 package stepDefinition;

import org.openqa.selenium.WebDriver;

import com.utils.HelperClass;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pageObjects.regreesion;

public class stepdef2 {

	static HelperClass b=new HelperClass();
	
	public static WebDriver driver =HelperClass.getDriver();
	static regreesion f2 ;
	
	
	@When("user Hover on Used Cars")
	public void user_hover_on_used_cars() {
	    f2.hoverUsedcar();
	}

	@Then("Dropdown is displayed")
	public void dropdown_is_displayed() {
	  f2.cheakdrpDown();
	}

	@When("User Cliks on the search Bar")
	public void user_cliks_on_the_search_bar() {
	   f2.clickSearch();
	}

	@Then("Search Options is displayed")
	public void search_options_is_displayed() {
	    f2.searchOptions();
	}

}
	driver = new ChromeDriver();
		
		driver.get("https://www.zigwheels.com/");
		 driver.findElement(By.xpath("//*[@id=\"forum_login_wrap_lg\"]")).click(); 
		 
		 driver.findElement(By.xpath("//*[@id=\"myModal3-modal-content\"]/div[1]/div/div[3]/div[6]/div")).click();
	

		  String mainWindowHandle = driver.getWindowHandle();
	        for (String handle : driver.getWindowHandles()) {
	            if (!handle.equals(mainWindowHandle)) {
	                // Switch to the new window
	               driver.switchTo().window(handle);
	                 break;
	               
	            }
	        }
	        
	        WebElement email=driver.findElement(By.xpath("//input[@id='identifierId']"));
	        email.sendKeys("afdf123@gmail.com");
	        
	       
	        
	        WebElement button = driver.findElement(By.xpath("//span[normalize-space()='Next']"));
	        button.click();
	        
	        WebElement pass= driver.findElement(By.xpath("//input[@name='Passwd']"));
	        pass.sendKeys("sdegre");
	        
	        String  msg = driver.findElement(By.xpath("//div[@jsname=\"B34EJ\"]//span")).getText();
	    




	
	 



	
	
	
	
	




	
	
	

