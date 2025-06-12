*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Edge
${url}      https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        @{labels} =         Get Selected List Labels     id:dropdown-class-example
        Log         @{labels}
        Select From List By Value    id:dropdown-class-example      option1
        Sleep    2s
        Select From List By Index    id:dropdown-class-example      2
        Sleep    2s
        Select From List By Label    id:dropdown-class-example      Option3
        Sleep    2s
        Close Browser