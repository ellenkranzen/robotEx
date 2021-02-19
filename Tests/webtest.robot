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

*** ignore ***
User can search for a optional object and add to basket
    [Documentation]            Ska kunna söka efter valfritt objekt & lägga till i kundvagn, samt verifiera rätt objekt
    [Tags]                     Test 1
    Go to Web Page             Handla billig mat online | Willys
    Search for Product         royal gala
    Verify Search Completed    royal gala
    Add item to basket
    Verify correct item in basket

User can search for item and add to basket - Gherkin syntax
    [Documentation]            Ska kunna söka efter och lägga till frukt.
    [Tags]                     Test 2
    Given Web page is open            Handla billig mat online | Willys
    When Search for Product           kiwi
    Then Verify Search Completed      kiwi

User can navigate to 'Erbjudanden'
    [Documentation]            Ska kunna navigera till Erbjudanden och verifiera platsen
    [Tags]                     Test 3
    Go to Web Page             Handla billig mat online | Willys
    Load Erbjudande page
    Verify Page Loaded         Erbjudanden | Willys

*** Test Cases ***
User can navigate to 'Jobba hos oss'
    [Documentation]            Ska kunna navigera till Jobba hos oss
    [Tags]                     Test 3
    Go to Web Page             Handla billig mat online | Willys
    # Go to Lediga Tjänster Page
    # Wait until page is loaded
   #Scroll element into view             xpath://*[@id="main-content"]/div[5]/footer
    Click element                      xpath://*[@id="main-content"]/div[5]/footer/div/div[1]/accordion-nav/div/nav/ul/li[3]/div/a



    Sleep                      10s
    # Switch window
    # Switch window              xpath://*[@id="main-content"]/div[5]/footer/div/div[1]/footer-nav[1]/nav/ul/li[3]/ul/li[1]/a