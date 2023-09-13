Feature: google search #(seems issues with Google)

  Scenario Outline: Search works
    Given open "https://www.google.com.hk"
    Then wait for 2 seconds
    When type "<query>" in "name=q"
    And send key "ENTER" to "name=q"
    Then wait for "id=result-stats" is visible
    And assert text "<text>" presented in "id=result-stats"

    Examples:
      | query                   | text    |
      | Portnov Computer School | 条结果 |
      | Portnov School          | 条结果 |