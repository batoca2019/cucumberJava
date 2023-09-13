package steps.lifetwig;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pages.lifetwig.LTLoginPage;

public class LTLoginsteps {

    LTLoginPage loginPage = new LTLoginPage();



    @Given("user opens main page")
    public void userOpensMainPage() {
        loginPage.open();
    }

    @When("fills out form with invalid crdentials")
    public void fillsOutFormWithInvalidCrdentials() {
        loginPage.fillOutCredentials();
    }

    @Then("invalid password error is displayed")
    public void invalidPasswordErrorIsDisplayed() {
        loginPage.assertErrorMessageInvalidPassword();
    }
}
