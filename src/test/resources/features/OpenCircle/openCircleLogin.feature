Feature: Authentification Form

  Scenario: Lifetwig login test
    Given open "http://qa.opencircle.us/login"
    Then wait for 1 seconds
    Then type "skytraffic431@gmail.com" in "xpath=//*[@id='email']"
    And type "i5^Q@,2Am7nJVBw2l" in "xpath=//*[@id='password']"
    And wait for 5 seconds
    And click to "xpath=//button[@type='submit']"
    Then assert element "xpath=//div[@class='ant-notification-notice ant-notification-notice-warning css-1e3x2xa ant-notification-notice-closable']" present
    #this code is working
