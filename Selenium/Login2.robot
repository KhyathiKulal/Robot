*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://www.tutorialspoint.com/selenium/practice/login.php

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]         This testcase verifies that the user is able to successfully login
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://input[@id='email']     timeout=5
        Click Element    xpath://a[@type='submit']
        Input Text    xpath://input[@id='firstname']   Khyathi
        Input Text    xpath://input[@id='lastname']    Kulal
        Input Text    xpath://input[@id='username']   kkulal
        Input Password    xpath://input[@id='password']   123
        Click Element    xpath://input[@value='Register']
        Click Element    xpath://a[@type='submit']
        Wait Until Element Is Visible    xpath://input[@id='email']     timeout=5
        Input Text    xpath://input[@id='email']    kkulal
        Input Password    xpath://input[@id='password']    123
        Click Element    xpath://input[@value='Login']
        Close Browser