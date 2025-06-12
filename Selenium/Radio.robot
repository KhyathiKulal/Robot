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
        Page Should Contain Radio Button    xpath://input[@class='radioButton']
        Select Radio Button    radioButton    radio2
        Page Should Contain Checkbox    xpath://input[@type='checkbox']
        Select Checkbox    xpath://input[@id='checkBoxOption2']
        Select Checkbox    xpath://input[@id='checkBoxOption1']
        Close Browser