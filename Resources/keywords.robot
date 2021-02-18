*** Settings ***
Library             SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open browser                about:blank     ${BROWSER}

Go to Web Page
    Load Page
    Verify Page Loaded

Load Page
    Go to                       ${URL}

Verify Page Loaded
    ${link_text}                Get Title
    Should Be Equal             ${link_text}        Handla billig mat online | Willys

End Web Test
    Close browser