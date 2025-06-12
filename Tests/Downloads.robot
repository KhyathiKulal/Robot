*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${browser}      Edge
${url}      https://the-internet.herokuapp.com/download

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window

        Click Element    xpath://a[normalize-space()='Test.txt']
        Sleep    2s

        ${files}=       List Files In Directory     C://Users//kkula//Downloads
        List Should Contain Value    ${files}    Test.txt
        Sleep    2s

        Close Browser
