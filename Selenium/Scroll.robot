*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Edge
${url}      https://www.amazon.in

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window

        Scroll Element Into View    xpath://a[normalize-space()='About Amazon']
        Sleep    2s
        Click Element    //a[normalize-space()='About Amazon']
        Sleep    4s
        Element Should Be Visible    xpath://div[@class='Page-header-bar']//span[1]//a[1]

        Close Browser
