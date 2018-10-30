*** Settings ***
Documentation    Suite description
Library  Selenium2Library
Library  BuiltIn
Resource  ../Resources/Common.robot


*** Keywords ***
Verify Login Is Successful
    Wait Until Element Is Visible    //h3[text()='Hi, Johny Smith']

Verify If User Is At Account Page
    ${url}=    Get Location
    Run Keyword IF    "${url}" == "${ACCOUNT_PAGE}"    log to console  "User is at the account page"
    ...    ELSE    log to console  "User is not at account page"
