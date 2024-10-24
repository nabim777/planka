Feature: project
    As a admin
    I want to change project elements
    So that I organize project board


  Background:
    Given user has browsed to the login page
    When user logs in with username "demo@demo.demo" and password "demo" using the webUI


  Scenario: delete a project
    Given user "demo" has created the following projects:
      | name     |
      | project1 |
      | project2 |
      | project3 |
    And the user has opened project "project2"
    When the user deletes a project "project2" using the webUI
    Then the user should be in dashboard page
