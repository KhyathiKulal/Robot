*** Settings ***
Library     SeleniumLibrary
 
*** Variables ***
${browser}      Edge
${url}      https://the-internet.herokuapp.com/windows
 
*** Test Cases ***
Verify login success with valid credentials
 
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        
        Click Element    xpath://a[normalize-space()='Click Here']
        Switch Window       title:New Window
        Element Should Be Visible    xpath://h3[normalize-space()='New Window']      New Window
        Sleep    2s
        
        Switch Window   title:The Internet
        Element Text Should Be    xpath://h3[normalize-space()='Opening a new window']    Opening a new window
        Sleep    2s
        
        Close Browser