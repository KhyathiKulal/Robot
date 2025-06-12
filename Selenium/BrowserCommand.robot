*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Edge
${url}      https://demoqa.com/upload-download
${url2}      https://www.google.com

*** Test Cases ***
Verify login success with valid credentials
        Open Browser    ${url}      ${browser}
        Go To        ${url2}
        Sleep    2s
        Go Back
        Reload Page
        Close Browser
