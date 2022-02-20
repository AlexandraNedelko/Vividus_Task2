GivenStories: story/trello/trelloTask2C.precondition.story 

Scenario: Create a board
When I wait until element located `By.xpath(//button[text()='View all closed boards'])` appears
When I find = '1' elements by By.xpath(//div[@class='board-tile mod-add']) and for each element do
|step|
|When I click on element located `By.xpath(//div[@class='board-tile mod-add'])`|
|When I enter `test1` in field located `By.xpath(//input[@data-test-id='create-board-title-input'])`|
|When I click on element located `By.xpath(//button[@data-test-id='create-board-submit-button'])`|

Scenario: Check info pop-up dismission
When I click on element located `By.xpath(//button[@data-test-id="header-info-button"])`
When the condition '#{eval("<class>"=="_3G5bqBqxC88MwF js-react-root")}' is true I do
|step																								 |
|When I click on element located `By.xpath(//button[@data-test-id='popover-close'])`			     |
|Then element located 'By.xpath(//section[@class='_3G5bqBqxC88MwF js-react-root'])' disappears in '5'|