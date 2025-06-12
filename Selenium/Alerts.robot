*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Edge
${url}      https://the-internet.herokuapp.com/javascript_alerts
*** Test Cases ***

Verify login success with valid credentials

        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Click Element    xpath://button[@onclick='jsAlert()']
        Sleep    2s
        #informational alert with ok button only
        Handle Alert        action=ACCEPT
        Sleep    4s
        #confirmation alerts
        Click Element    xpath://button[normalize-space()='Click for JS Confirm']
        Sleep    2s
        Handle Alert        action=DISMISS
        Sleep    2s
        Click Element    xpath://button[normalize-space()='Click for JS Prompt']
        Sleep    2s
        Input Text Into Alert    hello
        Sleep       2s
        Handle Alert        action=ACCEPT
        Close Browser

