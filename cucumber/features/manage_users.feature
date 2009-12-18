Feature: Manage users
  In order to understand my user names better
  As an administrator
  I want to view a list of users

Scenario: User List
  Given I have users name thillai, arasu
  When  I go to the list of users
  Then I should see "thillai"
  And I should see "arasu"