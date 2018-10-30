*** Settings ***
Documentation    File contains common keywords of he project
Resource  ../Resources/Common.robot

*** Keywords ***
GoTo HomePage
    Open Browser    ${SITE_URL}    ${WEBDRIVER}
    Maximize Browser Window