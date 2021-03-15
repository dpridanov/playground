Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  @repeat
  Scenario: Simple GET request
    Given url 'https://jsonplaceholder.typicode.com'
    When method get
    Then status 200
    
  @uiTest
  Scenario: Open google page
    * configure driver = { type: 'chrome', executable: 'google-chrome', headless: true, pollAttempts: 5 }
  
   * def testUrl = "http://google.com"
   
   Given driver testUrl
   Then maximize()
   And waitUntil("document.readyState == 'complete'")
  
