*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library    Collections

*** Variables ***
${browser}      Edge
${url}      https://omayo.blogspot.com/
${path}     C://Users//kkula//Downloads//sampleFile.jpeg

*** Test Cases ***
Verify login success with valid credentials
        Open Browser        ${url}      ${browser}
        Maximize Browser Window

        Select From List By Value    id:multiselect1      Hyundaix
        Sleep    2s
        Select From List By Index    id:multiselect1      1
        Sleep    2s
        Select From List By Label    id:multiselect1      Volvo
        Sleep    2s

        Select From List By Index    id:drop1      2
        Sleep    2s

        Scroll Element Into View    xpath://a[@id='link1']
        Sleep    2s
        Click Element    xpath://a[@id='link1']
        Element Should Be Visible    //img[@id='Header1_headerimg']
        Go Back

        Scroll Element Into View    //input[@id='alert2']
        Click Element    //input[@id='alert2']
        Sleep    2s
        Handle Alert        action=ACCEPT
        Sleep    2s

        Scroll Element Into View    xpath://input[@id='uploadfile']
        Choose File    xpath://input[@id='uploadfile']    ${path}
        Sleep    2s

        Scroll Element Into View    xpath://textarea[@id='ta1']
        Input Text    xpath://textarea[@id='ta1']    hello i am cat
        Sleep    2s

        Input Text    xpath://form[@name='form1']//input[@type='text']    Admin
        Input Password    //form[@name='form1']//input[@type='password']   admin123
        Click Element    xpath://button[@value='LogIn']
        Sleep    2s
        
#        Input Text    xpath://input[@name='q']    google
#        Click Element    xpath://input[@value='Search']
#        Sleep    2s
        
        Scroll Element Into View    xpath://input[@id='checkbox2']
        Select Radio Button    gender    female

        Select Checkbox    xpath://input[@id='checkbox2']

        Scroll Element Into View    xpath://input[@id='prompt']
        Click Element    xpath://input[@id='prompt']
        Sleep    2s
        Input Text Into Alert    hello
        Sleep       2s

        Click Element    xpath://input[@id='confirm']
        Sleep    2s
        Handle Alert        action=DISMISS
        Sleep    2s

        Close Browser