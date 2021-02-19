*** Settings ***
Library             SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open browser                about:blank     ${BROWSER}

Go to Web Page
    [Arguments]                 ${head_text}
    Load Page
    Verify Page Loaded          ${head_text}

Web page is open
    [Arguments]                 ${head_text}
    Load Page
    Verify Page Loaded          ${head_text}

Load Page
    Go to                       ${URL}

Verify Page Loaded
    [Arguments]                 ${head_text}
    ${link_text}                Get Title
    Should Be Equal             ${link_text}        ${head_text}  #Handla billig mat online | Willys

Search for Product
    [Arguments]                   ${search_term}
    Enter Search Term             ${search_term}
    Submit Search
    #Verify Search Completed       ${search_term}

Enter Search Term
    [Arguments]                   ${search_term}
    Input Text                    id:selenium--search-items-input                   ${search_term}

Submit Search
    Press Keys                    xpath://*[@id="selenium--search-items-input"]     RETURN
    Press Keys                    xpath://*[@id="selenium--search-items-input"]     RETURN

Verify Search Completed
    [Arguments]                   ${search_term}
    Wait until Page Contains Element         xpath://*[@id="selenium--product-grid-header"]
    ${actual_term}                Get Text   xpath://*[@id="selenium--product-grid-header"]
    Should Be Equal               "Sökord: ${search_term}"   "${actual_term}"

Add item to basket
    Add to basket
    Verify item added

Add to basket
    Click button         xpath://*[@id="main-content"]/div[4]/div[3]/div/ax-product-grid/div/div/ax-product-puff[1]/div/div[2]/div[2]/div/div/button[2]

Verify item added
   Wait until Page Contains Element        xpath://*[@id="selenium--cart-badge-total-unit-count"]
   ${actual_nr_items}                      Get Text  xpath://*[@id="selenium--cart-badge-total-unit-count"]
   Should Be Equal               "1"       "${actual_nr_items}"

Verify correct item in basket
    Go to page
    Verify page for basket Loaded

Go to Page
    Go to                     https://www.willys.se/varukorg

Verify page for basket Loaded
    ${title_text}               Get text           xpath://*[@id="selenium--cart"]/div/div[1]/div[1]/div/h1
    Should be Equal             "${title_text}"     "Varukorg"
    ${item_name}                Get text           xpath://*[@id="selenium--cart"]/div/div[1]/div[7]/ax-product-list/md-list/md-list-item/div/div[2]/h3
    Should be Equal             "${item_name}"      "Äpple Royal Gala Klass 1"

Load Erbjudande page
    Click element               xpath://*[@id="selenium--header-nav-link-erbjudanden"]

End Web Test
    Close browser
