Scenario:  sing up
Given I am on the main application page
When I click on element located `By.xpath(//*[@data-analytics-button="whiteSignupHeroButton"])`
When I wait until element located `By.xpath(//*[text()='Sign up for your account'])` appears
When I enter `<email>` in field located `By.xpath(//*[@id="email"])`
When I click on element located `By.xpath(//*[@id="signup-submit"])`
When I click on element located `By.xpath(//*[@id="signup-submit"])`

Scenario: not applicable
Given I am on the main application page
When I click on element located `By.xpath(//*[text()='Log In'])`
When I wait until element located `By.xpath(//*[text()='Log in to Trello'])` appears
When I enter `${email}` in field located `By.xpath(//*[@id="user"])`
When I click on element located `By.xpath(//*[@id="login"])`

When I wait until element located `By.xpath(//*[text()='Let’s set up your Workspace'])` appears
When I enter `Board` in field located `By.xpath(//*[@data-test-id="board-name-input"])`
When I click on element located `By.xpath(//*[@data-test-id="continue-button"])`
When I click on element located `By.xpath(//*[@data-test-id="continue-button"])`
When I enter `Card Name` in field located `By.xpath(//*[@data-test-id="card-name-input"])`
When I click on element located `By.xpath(//*[@data-test-id="continue-button"])`
When I click on element located `By.xpath(//*[@data-test-id="continue-button"])`
When I click on element located `By.xpath(//*[@data-test-id="continue-button"])`

When I wait until element located `By.xpath(//*[text()='Dashboard'])` appears
When I click on element located `By.xpath(//*[@data-test-id="header-member-menu-button"])`
When I click on element located `By.xpath(//*[@data-test-id="header-member-menu-logout"])`
When I wait until element located `By.xpath(//*[text()='Thanks for using Trello.'])` appears

Examples:
|email|password|username|
|a1_#{generate(regexify '[a-z]{7}"@"[a-z]{4}"."[a-z]{2}')}|#{generate(regexify '[a-z]{8}')}|user_1|
|a2_#{generate(regexify '[a-z]{7}"@"[a-z]{4}"."[a-z]{2}')}|#{generate(regexify '[a-z]{8}')}|user_2|
|a3_#{generate(regexify '[a-z]{7}"@"[a-z]{4}"."[a-z]{2}')}|#{generate(regexify '[a-z]{8}')}|user_3|