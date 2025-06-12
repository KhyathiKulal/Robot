*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Edge
${url}      https://the-internet.herokuapp.com/checkboxes

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        ${elements} =        Get WebElements    xpath://input[@type='checkbox']
        FOR    ${element}    IN    @{elements}
            Sleep       2s
            Click Element    ${element}
        END
        Close Browser