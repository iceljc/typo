Feature: Add or Edit Article Categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add and edit blogging 
  categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
  Scenario: Successfully enter the category page
    Given I am on the dashboard
    When I follow "Categories"
    Then I should see "Keywords"
  
  Scenario: Successfully add a blog category
    Given I am on the categories page
    When I fill in "category_name" with "test"
    And I fill in "category_permalink" with "testlink"
    And I press "Save"
    Then I should see "testlink"
  
  Scenario: Successfully edit a blog category
    Given I am on the categories page
    When I fill in "category_name" with "test"
    And I fill in "category_permalink" with "testlink"
    And I press "Save"
    Then I should see "test"
    When I follow "test"
    And I follow "Cancel"
    And I fill in "category_name" with "test2"
    And I fill in "category_permalink" with "test2link"
    And I press "Save"
    Then I should see "test2"
  
    