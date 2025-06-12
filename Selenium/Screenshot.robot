*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Variables ***
${browser}      Edge
${url}       https://the-internet.herokuapp.com/javascript_alerts
${url2}      https://www.google.com

*** Test Cases ***
Verify login success with valid credentials
        Open Browser    ${url}      ${browser}
        Maximize Browser Window
        Capture Page Screenshot     C://Users//kkula//Downloads//robo1.png
        Sleep    2s
        Capture Element Screenshot    xpath://button[@onclick='jsAlert()']     C://Users//kkula//Downloads//robo2.png
        Close Browser

