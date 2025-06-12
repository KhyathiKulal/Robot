*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}     Edge
${URL}         https://the-internet.herokuapp.com/tables

*** Test Cases ***
Log All Table Data
    [Documentation]    Logs all data from the first table on the page
    Open Browser       ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep              1s

    ${rows}=    Get Element Count    xpath://table[@id='table1']/tbody/tr

    FOR     ${rowIndex}    IN RANGE    1    ${rows+1}
         ${cols}=    Get Element Count    xpath://table[@id='table1']/tbody/tr[${rowIndex}]/td
         FOR    ${colIndex}    IN RANGE    1    ${cols+1}
              ${cellText}=    Get Text    xpath://table[@id='table1']/tbody/tr[${rowIndex}]/td[${colIndex}]
              Log    Row ${rowIndex} Col ${colIndex}: ${cellText}
         END
    END
    Sleep    2s
    Close Browser
