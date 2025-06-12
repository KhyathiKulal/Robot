*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Edge
${url}      https://the-internet.herokuapp.com/dropdown

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Select From List By Value    id:dropdown      1
        Sleep    2s
        Select From List By Index    id:dropdown      2
        Sleep    2s
        Select From List By Label    id:dropdown      Option 1
        Sleep    2s
        Close Browser