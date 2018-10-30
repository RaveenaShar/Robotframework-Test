*** Settings ***
Documentation    Test Case for searching hotels
Library  Selenium2Library
Library  BuiltIn
Resource  ../Resources/PublicKeywords.robot
Resource  ../Resources/Login_resource.robot
Resource  ../Resources/Account_resource.robot
Resource  ../Resources/SearchHotels_resource.robot
Test Setup  GoTo HomePage
Test Teardown  Close Browser

*** Test Cases ***
Search for hotels after login
    Given user has navigated to the login page
    And user provide the correct credentials
    And user is logged in
    And user has clicked Home to access the search page
    And user has chosen the Hotels option
    And user has chosen a hotel for <city>
    And user have chosen with dates <checkin> to <checkout>
    And user has selected <num-adults>, <num-children>
    When user clicks search
    Then matching results are displayed