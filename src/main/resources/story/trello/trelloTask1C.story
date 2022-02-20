Scenario: Sign In for board creation via API
Given I am on the main application page
When I click on element located `By.xpath(//*[@href='/login'])`
When I wait until element located `By.xpath(//*[text()='Log in to Trello'])` appears
When I enter `${signInEmail}` in field located `By.xpath(//*[@id="user"])`
When I click on element located `By.xpath(//*[@id="login"])`
When I enter `${signInPassword}` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="login-submit"])`
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?key=a08abafbb0b5ec8a3492418cf67bad28&token=c26e3559170c9ee4aa5cafdf94ea5fc9a869a700076a344e224dd04695d4bc76&name=Finally'
Then the response code is equal to '200'

Given I am on the main application page
Then the text 'Finally' exists