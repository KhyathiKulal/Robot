*** Settings ***
Library     SeleniumLibrary
Library    Process

*** Variables ***
${browser}      Edge
${url}      https://jqueryui.com/datepicker

*** Test Cases ***
Scrolling

        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window

        Wait Until Element Is Visible    locator
        Wait For Condition    condition
        Wait For Expected Condition    condition
        Wait For Process
        Wait Until Element Is Enabled    locator
        #etc
        Close Browser