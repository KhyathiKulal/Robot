*** Settings ***
Library     RequestsLibrary

*** Variables ***
${base_url}     https://reqres.in/
${Servicename}     api/users/2

*** Test Cases ***
DELETe request example
        RequestsLibrary.Create Session      baseURI     ${base_url}     verify=True
        &{headers}=     Create Dictionary       content-type=application/json
        &{headers}=     Create Dictionary       x-api-key=reqres-free-v1
        ${response}=        DELETE On Session      baseURI     ${Servicename}        headers=${headers}
        Log    ${response}
        Log    ${response.status_code}
        #Should Be Equal As Numbers    ${response.status_code}    201