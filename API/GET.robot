*** Settings ***
Library     RequestsLibrary

*** Variables ***
${BASE_URL}     https://reqres.in/
${ENDPOINT}     api/users?page=2

*** Test Cases ***
Get request example
    Create Session      jsonlaceholder     ${BASE_URL}
    ${response}=        Get On Session      jsonlaceholder      ${ENDPOINT}
    Log     ${response.status_code}
    Log     ${response.content}
    Should Be Equal As Numbers    ${response.status_code}    200