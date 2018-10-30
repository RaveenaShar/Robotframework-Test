*** Settings ***
Documentation    Test cases for login page
Library  Selenium2Library
Library  BuiltIn
Resource  ../Resources/PublicKeywords.robot
Resource  ../Resources/Login_resource.robot
Resource  ../Resources/Account_resource.robot
Test Setup  GoTo HomePage
Test Teardown  Close Browser

*** Test Cases ***
Login with correct credentials
    [Documentation]  Login with correct credentials
    [Tags]  Smoke
    Given user has navigated to the login page
    When user provide the correct credentials
    Then user is logged in
    And user will be directed to their account page

Login with incorrect credentials
    [Documentation]  Login with incorrect credentials
    [Tags]    Smoke
    Given user has navigated to the login page
    When user provide the incorrect password for their account
    Then print error message