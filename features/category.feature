Feature: Write Articles
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add add and edit blogging 
  categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
  Scenario: Successfully add a blog category
    Given I am on the dashboard
    When I follow "Categories"
    Then I should see "Keywords"