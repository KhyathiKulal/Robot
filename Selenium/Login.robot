*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://input[@placeholder='Username']     timeout=5
        Input Text    xpath://input[@placeholder='Username']    Admin
        Input Text    xpath://input[@placeholder='Username']    admin123
        Click Element    xpath://button[@type='submit']
        Element Should Be Visible    xpath://div[@class='oxd-topbar-header-title']      timeout=5
        Close Browser