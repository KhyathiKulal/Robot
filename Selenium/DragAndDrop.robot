*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Edge
${url}      https://the-internet.herokuapp.com/drag_and_drop
*** Test Cases ***

Verify login success with valid credentials

        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window

        #drag and drop
        Drag And Drop    xpath://div[@id='column-a']    xpath://div[@id='column-b']
        Sleep    2s

        Close Browser

