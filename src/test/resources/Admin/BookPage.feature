Feature: Categories List Menu and Books Category
  Scenario outline: utline : user can see books category on the left panel of home page
    Given user on  home page
    When user select books category
    Then user should navigate to books category page
    And user should see the Books category page with '<filters>'
    And user should see the list of produts
Examples:
    |filters|
    |sort by|
    |Display|
    |View as|

  @sortby

Scenario: apply sort by filters
  Given user on books category page
  When user select sort by filter'<sort by>' from list
  Then product should be sorted by '<Order>'
  Examples:
  | sort by|Order|
  |Positon|Position A|
  |Name: A to Z| alphabetical ascending order|
  |Name:  Z To A|alphabetical descending order|
  |Price:  Low to High |Price decending order|
  |Price: High to Low |Price ascending order|
  |Created on|latest date|

  @Display
  Scenario: apply Display filters
    Given user on books category page
    When user select display filter '<Display>' from list
    Then user should see the selected no of products '<no of products>' per page
    Examples:
    |Display|no of products|
    |4|4|
    |8|8|
    |12|12|

    @Viewas
    Scenario: apply view as filters
      Given user on books category page
      When user select view as filters '<view as>' from list
      Then user should see '<different views>'
      Examples:
      |view as|different views|
      |Grid|products in grid view|
      |List|products in list view|