*** Settings ***
Documentation    Suite description
Library  Selenium2Library
Library  BuiltIn
Resource  ../Resources/Common.robot

*** Keywords ***
Verify Login Page Is Loaded
    Wait Until Element Is Visible    //div[text()='Login']
    Log    "User navigation to login page successful"

Enter Correct Login Credentials
    Page Should Contain Element    //input[@name='username']
    Input Text    //input[@name='username']    ${Email}
    Page Should Contain Element    //input[@name='password']
    Input Text    //input[@name='password']    ${Correct_Password}

Enter Incorrect Login Credentials
    Page Should Contain Element    //input[@name='username']
    Input Text    //input[@name='username']    ${Email}
    Page Should Contain Element    //input[@name='password']
    Input Text    //input[@name='password']    ${Incorrect_Password}

Click Login
    Click Button    //button[contains(@class,'loginbtn')]

