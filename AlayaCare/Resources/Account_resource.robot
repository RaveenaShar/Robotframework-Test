*** Settings ***
Documentation    Login page resources
Resource  ../ACPages/AccountPage.robot
Resource  ../Resources/Common.robot

*** Keywords ***
User will be directed to their account page
    AccountPage.Verify If User Is At Account Page