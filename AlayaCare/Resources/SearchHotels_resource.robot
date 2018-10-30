*** Settings ***
Documentation    Suite description
Resource  ../Resources/Common.robot
Resource  ../ACPages/HotelSearchPage.robot
Library  BuiltIn

*** Keywords ***
User has clicked Home to access the search page
    HotelSearchPage.Click On Home Header
    HotelSearchPage.Verify Search Page Is Open

User has chosen the Hotels option
    HotelSearchPage.Click On Hotel Search Option
    Sleep    3s

User has chosen a hotel for <city>
    HotelSearchPage.User Enters City Name

User have chosen with dates <checkin> to <checkout>
    HotelSearchPage.User Enters Checkin date
    HotelSearchPage.User Enters Checkout date
    HotelSearchPage.Verify Checkin Date Less Than Checkout

User has selected <num-adults>, <num-children>
    HotelSearchPage.User Enters The Number Of Adults And Children

User clicks search
    HotelSearchPage.Click Search Button

Matching results are displayed
    HotelSearchPage.Verify Results Are Present
    HotelSearchPage.Verify Results Are Valid