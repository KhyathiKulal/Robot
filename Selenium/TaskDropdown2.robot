*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Edge
${url}      https://demoqa.com/select-menu

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Select From List By Value    id:cars      opel
        Sleep    2s
        Select From List By Index    id:cars      1
        Sleep    2s
        Select From List By Label    id:cars      Volvo
        Sleep    2s
        Close Browser