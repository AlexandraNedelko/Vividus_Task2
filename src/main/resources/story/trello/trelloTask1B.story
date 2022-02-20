Scenario:  sing up (full flow not possible due to captcha)
Given I am on the main application page
When I click on element located `By.xpath(//*[@data-analytics-button="whiteSignupHeroButton"])`
When I wait until element located `By.xpath(//*[text()='Sign up for your account'])` appears
When I enter `<email>` in field located `By.xpath(//*[@id="email"])`
When I click on element located `By.xpath(//*[@id="signup-submit"])`
When I click on element located `By.xpath(//*[@id="signup-submit"])`

Examples:
|email|
|a1_#{generate(regexify '[a-z]{7}"@"[a-z]{4}"."[a-z]{2}')}|
|a2_#{generate(regexify '[a-z]{7}"@"[a-z]{4}"."[a-z]{2}')}|
|a3_#{generate(regexify '[a-z]{7}"@"[a-z]{4}"."[a-z]{2}')}|