Scenario: Login as a registered user
Given I am on the main application page
When I click on element located `By.xpath(//a[@href='/login'])`
When I wait until element located `By.xpath(//*[text()='Log in to Trello'])` appears
When I enter `${signInEmail}` in field located `By.xpath(//*[@id="user"])`
When I click on element located `By.xpath(//*[@id="login"])`
When I enter `${signInPassword}` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="login-submit"])`