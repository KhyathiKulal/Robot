*** Settings ***
Library     SeleniumLibrary
 
 
*** Variables ***
${browser}      Edge
${url}      https://www.amazon.in
 
*** Test Cases ***
Verify login success with valid credentials
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
        Call Method    ${chrome options}    add_argument    --headless
        Call Method    ${chrome options}    add_argument    --no-sandbox
        Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
        Create WebDriver    Chrome    options=${chrome options}
        Go To     https://www.amazon.in
        Maximize Browser Window
        #right click
        Open Context Menu    xpath://a[normalize-space()='Mobiles']
        Sleep    2s
        #double click
        Double Click Element    xpath://a[normalize-space()="Today's Deals"]
        Sleep    2s
        Close Browser
