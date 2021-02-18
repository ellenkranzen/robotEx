*** Settings ***
Documentation       Tester från extrauppgifter
Resource            /Users/ellenkranzen/PycharmProjects/robotEx/Resources/keywords.robot
Library             SeleniumLibrary
Test Setup          Begin Web Test
Test Teardown       End Web Test


*** Variables ***
${BROWSER}          chrome
${URL}              http://www.willys.se/


*** Test Cases ***
User can access website
    [Documentation]             Ska kunna komma åt websidan
    [Tags]                      Test 1
    Go to Web Page



