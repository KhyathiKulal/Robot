*** Settings ***
Library     SeleniumLibrary
 
*** Variables ***
${browser}      Edge
${url}      https://jqueryui.com/datepicker
 
*** Test Cases ***
Scrolling
 
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        
        Select Frame    xpath://iframe[@class='demo-frame']
        Sleep    2s
        
        Click Element    id:datepicker
        Sleep    2s
        
        Current Frame Should Contain    Date
        Sleep    2s
        
        Click Element    xpath://a[normalize-space()='10']
        Sleep    2s
        
        Close Browser