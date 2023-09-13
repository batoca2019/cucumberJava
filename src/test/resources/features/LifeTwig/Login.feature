Feature: Authentification Form
  
  Scenario: Lifetwig login test
    Given user opens main page
    When fills out form with invalid crdentials
    Then invalid password error is displayed
    #this code is working
