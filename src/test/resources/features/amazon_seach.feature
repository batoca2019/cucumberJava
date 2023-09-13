Feature: Amazon Search

  Rule: user should be to find the goods

    Scenario Outline: user receives reasonable amount of search results
      Given open "https://www.amazon.com/"
      And type "<searchQuery>" in "xpath=//input[@id='twotabsearchtextbox']"
      Then click to "//input[@id='nav-search-submit-button']"
      #When send key "ENTER" to "xpath=//*[@id='twotabsearchtextbox']"
      Then assert element "xpath=//*[contains(@h1,'4k monitor ')]" present
      #And assert text "<results>" presented in "xpath=//*[@id='search']/span/div/h1/div/div[1]/div/div/span[1]"

      Examples:
        | searchQuery | results |
        | 4k monitor  | results |
        | iphone 13   | results |
        | cars        | results |