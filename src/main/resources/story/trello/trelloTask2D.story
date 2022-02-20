GivenStories: story/trello/trelloTask2C.precondition.story

Scenario: visual test of a header
When I wait until element located `By.xpath(//div[@id='header'])` appears
When I change context to element located `By.xpath(//div[@id='header'])`
When I compare against baseline with `trelloHeader`

Scenario: visual check workspaces menu
When I click on element located `By.xpath(//*[@data-test-id='home-team-tab-name'])`
When I change context to element located `By.xpath(//li[@data-test-id='home-team-tab-section-620d77df8acf578e467e85c7'])`
When I compare against baseline with `trelloWorkspaceHidden`

Scenario: visual test of a side menu on templates page
When I click on element located `By.xpath(//li[@data-test-id='templates'])`
When I change context to element located `By.xpath(//nav[@class='home-left-sidebar-container'])`
When I compare against baseline with `trelloTemplatesLeftMenu`

Scenario: visual test of a search on templates
When I click on element located `By.xpath(//*[@data-test-id='atlassian-app-switcher'])`
When I change context to element located `By.xpath(//section[@data-testid='switchTo__section'])`
When I compare against baseline with `trelloSwitch`

Scenario: visual check of the main content on home page
When I click on element located `By.xpath(//*[@data-test-id='home-link'])`
When I change context to element located `By.xpath(//div[@class='home-main-content-container'])`
When I compare against baseline with `homeMainContent`