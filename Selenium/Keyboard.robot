*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Edge
${url}      https://the-internet.herokuapp.com/key_presses
*** Test Cases ***

Verify login success with valid credentials

        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window

        #keyborad actions
        Press Key    xpath://input[@id='target']    SPACE
        Sleep    2s

        Press Key    xpath://input[@id='target']    SHIFT
        Sleep    2s

        Press Key    xpath://input[@id='target']    CTRL
        Sleep    2s

        Close Browser

