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
# User can access website
   #[Documentation]             Ska kunna komma åt websidan
   #[Tags]                      Test 0
   #Go to Web Page

User can search for a optional object and add to basket
    [Documentation]            Ska kunna söka efter valfritt objekt & lägga till i kundvagn
    [Tags]                     Test 1
    Go to Web Page
    Search for Product         royal gala
    Add item to basket
    Verify correct item in basket
