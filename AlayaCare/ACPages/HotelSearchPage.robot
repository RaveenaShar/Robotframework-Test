*** Settings ***
Documentation    Suite description
Library  Selenium2Library
Library  BuiltIn
Resource  ../Resources/Common.robot

*** Keywords ***
Click On Home Header
    Wait Until Element Is Visible    //a[text()='Home']
    Click Element    //a[text()='Home']
    Verify Search Page Is Open

Verify Search Page Is Open
    Page Should Contain Element    //button[@type='submit']

Click On Hotel Search Option
    Click Element    //a[@href="#HOTELS"]

User Enters City Name
    Sleep    3s
    Page Should Contain Element    //input[@class='select2-input']
    Sleep    2s
    Click Element    //div[@id='s2id_autogen8']
    sleep    2s
    Sleep    1s
    Input Text    //input[@class='select2-input select2-focused']    ${City_name}
    Sleep    3s
    Press Key    //input[@class='select2-input select2-focused']    \\13

User Enters Checkin date
    sleep    2s
    Input Text    //input[@name='checkin']    ${Checkin_date}

User Enters Checkout date
    sleep    2s
    Input Text    //input[@name='checkout']    ${Checkout_date}

User Enters the number of adults and children
    Click Element    //input[@id='travellersInput']
    Sleep    1s
    Click Element    //button[@id='adultPlusBtn']
    Click Element    //button[@id='childPlusBtn']

Click Search Button
    Click Element    //button[@type='submit']

Verify Results Are Present
    Page Should Contain Element    //*[@id="body-section"]/div[5]/div/div[3]

Verify Results Are Valid
    Verify If Records Are Present

Verify Correct Result
    log to console  "Records are present"
    Page Should Contain Element    //a[@title='dubai']

Verify Checkin Date Less Than Checkout
    run keyword IF  "${Checkin_date}" >= "${Checkout_date}"    log to console  "Checkin date is greater than checkout. Please re-adjust the dates"
    ...    ELSE    log to console  "Checkin date is less than checkout date"

Verify If Records Are Present
    ${text}=    get count  //h2[text()='No Results Found']    //*[@id="body-section"]/div[5]/div/div[3]
    log to console    ${text}
    run keyword IF    "${text}" != "0"    Verify Correct Result
    ...    ELSE    Close Browser
