Feature: Authentification Form
  
  Scenario: Lifetwig login test
    Given open "https://www.lifetwig.com/login"
    Then type "ruslan.axle@gmail.com" in "id=login_email"
    And type "Penguin25!" in "id=login_password"
    And wait for 2 seconds
    And click to "xpath=//button[@type='submit']"
    Then assert element "xpath=//a[contains(@href,'/user-profile')]" present
    #this code is working
