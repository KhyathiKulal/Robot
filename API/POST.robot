*** Settings ***
Library     RequestsLibrary

*** Variables ***
${BASE_URL}     https://reqres.in/
${ENDPOINT}     api/users
&{HEADERS}      Content-Type=application/json    x-api-key=reqres-free-v1
&{BODY}         name=morpheus    job=leader

*** Test Cases ***
Post Request Example
    Create Session    jsonplaceholder    ${BASE_URL}    verify=False
    ${response}=      POST On Session    jsonplaceholder    ${ENDPOINT}    json=${BODY}    headers=${HEADERS}
    Log    ${response.status_code}
    Log    ${response.content}
    Should Be Equal As Numbers    ${response.status_code}    201