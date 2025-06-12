*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Edge
${url}      https://www.amazon.in/

*** Test Cases ***
Verify login success with valid credentials

        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        
        #right click
        Open Context Menu    xpath://a[normalize-space()='Mobiles']
        Sleep    2s

        #doubke click
        Double Click Element    xpath://a[normalize-space()="Today's Deals"]
        Sleep    2s

        Close Browser

