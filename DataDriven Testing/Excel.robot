*** Settings ***
Library     DataDriver      C:/Users/kkula/PycharmProjects/JuneRoboFWEGIndia2025/TestData/ddtLogindata.xlsx       sheet_name=ddtLogindata
Library     SeleniumLibrary
Resource       ../Resources/DDTKeywords.robot


Suite Setup     Launch app
Suite Teardown      Close app
Test Template       InvalidLogin

*** Test Cases ***
Login with user ${username} and ${password}         Default UserData

*** Keywords ***
InvalidLogin
        [Arguments]     ${username}     ${password}
        Sleep    2s
        Set Email    ${username}
        Sleep    2s
        Set Password    ${password}
        Sleep    2s
        Click Login
        Sleep    2s
        Error Message Should be Visible