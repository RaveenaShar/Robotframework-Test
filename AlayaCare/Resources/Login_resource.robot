*** Settings ***
Documentation    Login page resources
Resource  ../ACPages/LoginPage.robot
Resource  ../Resources/Common.robot
Resource  ../ACPages/AccountPage.robot
Library  BuiltIn

*** Keywords ***
User has navigated to the login page
    Navigate To Login Page
    LoginPage.Verify Login Page Is Loaded

User provide the correct credentials
    Sleep    5s
    LoginPage.Enter Correct Login Credentials
    LoginPage.Click Login

User provide the incorrect password for their account
    Sleep    5s
    LoginPage.Enter Incorrect Login Credentials
    LoginPage.Click Login

Navigate To Login Page
    Go To    ${LOGIN_PAGE}

User is logged in
    Sleep    3s
    AccountPage.Verify Login Is Successful

Print error message
    Log    Invalid Email or Password