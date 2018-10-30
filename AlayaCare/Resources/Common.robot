*** Settings ***
Documentation    Information regarding the common variables
Library  Selenium2Library

*** Variables ***
${WEBDRIVER}    chrome
${SITE_URL}     http://www.phptravels.net
${Email}    user@phptravels.com
${Correct_Password}    demouser
${Incorrect_Password}    abc
${LOGIN_PAGE}    http://www.phptravels.net/login
${ACCOUNT_PAGE}    http://www.phptravels.net/account/
${City_name}    Dubai
${Checkin_date}    22/01/2019
${Checkout_date}    01/01/2019

