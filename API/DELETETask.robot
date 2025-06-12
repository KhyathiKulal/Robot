*** Settings ***
Library     RequestsLibrary

*** Variables ***
${base_url}     https://videogamedb.uk:443/
${Servicename}     api/v2/videogame/2

*** Test Cases ***
DELETe request example
        RequestsLibrary.Create Session      baseURI     ${base_url}     verify=True
        &{headers}=     Create Dictionary       content-type=application/json
        &{headers}=     Create Dictionary
        ${response}=        DELETE On Session      baseURI     ${Servicename}        headers=${headers}
        Log    ${response}
        Log    ${response.status_code}
