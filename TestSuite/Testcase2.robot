*** Settings ***
Library     SeleniumLibrary
Variables       ./../variable.py

*** Variables ***
${name}     John
${city}     Bangalore
@{list}     green   red     blue
&{dict}     username=Admin      password=admin123

*** Test Cases ***
Define variable
        Log    ${name}
        Log    ${city}
        Log    ${list}
        Log    ${list[0]}
        FOR    ${element}    IN    @{LIST}
            Log    ${element}
        END
        Log     ${dict}[username]
        Log     ${dict}[password]

Set variables at Testcase level
        Set Test Variable    ${address}     ringroad
        Log     ${address}

Set variables at Suite level
        Log     ${username}
        Log     ${password}