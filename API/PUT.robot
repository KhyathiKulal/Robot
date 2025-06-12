*** Settings ***
Library     RequestsLibrary

*** Variables ***
${base_url}     https://reqres.in/
${Servicename}     api/users/2
${sample_json}       { "name": "morpheus","job": "zion resident"}
&{body}
&{headers}
&{response}


*** Test Cases ***
POST request example
        RequestsLibrary.Create Session      baseURI     ${base_url}     verify=True
        &{body}=        Create Dictionary   name=morpheus job=leader
        &{headers}=     Create Dictionary       content-type=application/json
        &{headers}=     Create Dictionary       x-api-key=reqres-free-v1
        ${response}=        PUT On Session      baseURI     ${Servicename}        json=${body}        headers=${headers}
        Log    ${response}
        Log    ${response.status_code}
        #Should Be Equal As Numbers    ${response.status_code}    201