package pages.lifetwig;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import pages.BasePage;

public class LTLoginPage extends BasePage {

    private static final String Login_Page = "https://www.lifetwig.com/login";
    private static final String Unauthorized_login = "ruslan.axle@gmail.com";
    private static final String Login_input = "id=login_email";
    private static final String Unauthorizen_password= "Penguin25!";
    private static final String Password_input = "id=login_password";
    private static final String Submit_button= "xpath=//button[@type='submit']";
    private static final String Invalid_Password_Error = "xpath=//a[contains(@href,'/user-profile')]";

    public void open(){
        driver.get(Login_Page);

    }

    public void fillOutCredentials() {

        steps.typeIn(Unauthorized_login, Login_input);
        steps.typeIn(Unauthorizen_password, Password_input);
        steps.clickTo(Submit_button);

    }

    public void assertErrorMessageInvalidPassword() {
        steps.assertElementStringPresent(Invalid_Password_Error);
    }
}
